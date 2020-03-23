#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

#include <Windows.h>

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

#include <GL/gl.h>

#include <glm/glm.h>

struct Vertex
{
	glm_vec3 position;
	glm_vec3 normal;
	glm_vec2 uv;
};

struct Extents3D
{
	glm_vec3 x0;
	glm_vec3 x1;
};

struct Model
{
	uint32_t drawCount;
	size_t vertexCount;
	size_t indexCount;
	struct Vertex *vertexArray;
	uint64_t *indexArray;
	bool hasNormals;
	bool hasTexCoords;
	bool isIndexed;
	struct Extents3D bounds;
};

unsigned char *load_entire_file(const char *filename, size_t *data_size)
{
	FILE *file = fopen(filename, "rb");
	unsigned char *data = NULL;
	size_t size;

	if (file)
	{
		fseek(file, 0, SEEK_END);
		size = (size_t)ftell(file);
		fseek(file, 0, SEEK_SET);

		data = (unsigned char *)malloc(size);
		fread(data, 1, size, file);

		*data_size = size;
	}
	else
	{
		printf("Failed to open file at %s\n", filename);
	}

	fclose(file);
	return data;
}

static glm_vec3
glm_make_vec3(float *data)
{
	return *(glm_vec3 *)data;
}

static glm_vec2
glm_make_vec2(float *data)
{
	return *(glm_vec2 *)data;
}

static struct Model
load_obj(const char *filename)
{
	struct Model model;

	size_t obj_string_len;
	char *tmp_string = (char *)load_entire_file(filename, &obj_string_len);
	char *obj_string = (char *)realloc(tmp_string, obj_string_len + 1);
	obj_string[obj_string_len] = '\0';

	printf("read obj string from file (\"%s\")\n", filename);
	printf("address: 0x%08X\n", (uintptr_t)obj_string);
	printf("size in bytes: %lu\n", obj_string_len);

	// Start parsing through the file string

	printf("parsing obj string...\n");
	
	//printf("position count: %lu\n", desc.position_count);
	//printf("uv count: %lu\n", desc.uv_count);
	//printf("normal count: %lu\n", desc.normal_count);
	//printf("face count: %lu\n", desc.face_count);
	float *v_a = NULL; // vec3
	float *vt_a = NULL; // vec2
	float *vn_a = NULL; // vec3
	uint32_t *f_a = NULL; // position/texcoord/normal, 3 uints, 3 times

	size_t v_n = 0;
	size_t vt_n = 0;
	size_t vn_n = 0;
	size_t f_n = 0;

	char *line;
	char token[25];

	line = strtok(obj_string, "\n");

	while (line != NULL && token != NULL)
	{
		sscanf(line, "%s", &token[0]);

		if (strlen(token) == 0) break;
		//token = strtok(beg_line, " \n");
		//printf("%s\n", token);
		//printf("%u\n", f_n);

		if (!strcmp(token, "v")) // Position
		{
			v_a = (float *)realloc(v_a, ++v_n * 3 * sizeof(float));
			float vx, vy, vz;
			sscanf(line, "v %f %f %f", &vx, &vy, &vz);
			v_a[ (v_n-1)*3+0 ] = vx;
			v_a[ (v_n-1)*3+1 ] = vy;
			v_a[ (v_n-1)*3+2 ] = vz;
		}
		else if (!strcmp(token, "vt")) // Texcoords
		{
			vt_a = (float *)realloc(vt_a, ++vt_n * 2 * sizeof(float));
			float vx, vy;
			sscanf(line, "vt %f %f", &vx, &vy);
			vt_a[ (vt_n-1)*2+0 ] = vx;
			vt_a[ (vt_n-1)*2+1 ] = vy;
		}
		else if (!strcmp(token, "vn")) // Normals
		{
			vn_a = (float *)realloc(vn_a, ++vn_n * 3 * sizeof(float));
			float vx, vy, vz;
			sscanf(line, "vn %f %f %f", &vx, &vy, &vz);
			vn_a[ (vn_n-1)*3+0 ] = vx;
			vn_a[ (vn_n-1)*3+1 ] = vy;
			vn_a[ (vn_n-1)*3+2 ] = vz;
		}
		else if (!strcmp(token, "f")) // Face
		{
			f_a = (uint32_t *)realloc(f_a, ++f_n * 9 * sizeof(uint32_t));
			uint32_t vi[3], vti[3], vni[3];
			sscanf(line, "f %u//%u %u//%u %u//%u",
				&vi[0], /*&vti[0],*/ &vni[0],
				&vi[1], /*&vti[1],*/ &vni[1],
				&vi[2], /*&vti[2],*/ &vni[2]);

			for (size_t i = 0; i < 3; ++i)
			{
				//printf("%u\n", vi[i]);
				f_a[ (f_n-1)*9 + i*3+0 ] = vi[i];
				//f_a[ (f_n-1)*9 + i*3+1 ] = vti[i];
				f_a[ (f_n-1)*9 + i*3+2 ] = vni[i];
			}
		}

		line = strtok(NULL, "\n");
		//line = strchr(line, '\n') + 1;//strtok(line, "\n\0") + 1;
	}

	model.vertexArray = (struct Vertex *)malloc(sizeof(struct Vertex) * f_n * 3);
	model.vertexCount = f_n * 3;
	model.drawCount = f_n;

	for (size_t i = 0; i < f_n * 3; ++i)
	{
		struct Vertex vert;
		size_t v_idx = f_a[ i*3+0 ]-1;
		size_t vt_idx = f_a[ i*3+1 ]-1;
		size_t vn_idx = f_a[ i*3+2 ]-1;
		//printf("%u\n", v_idx);
		vert.position = *(glm_vec3*)&v_a[v_idx*3];

		if (vt_n > 0) vert.uv = *(glm_vec2 *)&vt_a[vt_idx*2];
		if (vn_n > 0) vert.normal = *(glm_vec3 *)&vn_a[vn_idx*3];

		model.vertexArray[i] = vert;
	}

	model.hasNormals = vn_n > 0;
	model.hasTexCoords = vt_n > 0;

	model.isIndexed = false;


	free(v_a);
	if (vt_n > 0) free(vt_a);
	if (vn_n > 0) free(vn_a);
	free(f_a);

	printf("parsed %u vertices\n", v_n);

	free(obj_string);

	return model;
}


static void
free_model(const struct Model *model)
{
	free(model->vertexArray);
	free(model->indexArray);
}


static void
render_model_gl1(struct Model *model)
{
	glPushMatrix();

	glTranslatef(0.0f, 0.25f * sinf(glfwGetTime()*2.5f), 0.0f);
	glRotatef(glfwGetTime() * M_PI * 16.0f, 0.0f, 1.0f, 0.0f);

	glScalef(0.2f, 0.2f, 0.2f);

	glBegin(GL_TRIANGLES);

	for (size_t i = 0; i < model->vertexCount; ++i)
	{
		glNormal3fv(&model->vertexArray[i].normal.elem[0]);
		glVertex3fv(&model->vertexArray[i].position.elem[0]);
	}

	glEnd();

	glPopMatrix();
}

int main(int argc, char *argv[])
{
	struct Model teapot = load_obj("../data/teapot.obj");
	printf("done loading teapot!\n");

	unsigned int width = 1280;
	unsigned int height = 720;

	glfwInit();
	GLFWwindow *window = glfwCreateWindow(width, height, "Teapot", NULL, NULL);
	glfwMakeContextCurrent(window);

	glViewport(0, 0, width, height);
	glClearColor(0.74f, 0.82f, 0.93f, 1.0f);

	bool isQuit = false;

	while (!isQuit)
	{
		glfwPollEvents();

		if (glfwWindowShouldClose(window)) isQuit = true;

		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		glEnable(GL_DEPTH_TEST);
		glEnable(GL_NORMALIZE);
		glEnable(GL_LIGHTING);
		glEnable(GL_LIGHT0);
		glShadeModel(GL_SMOOTH);

		double aspect = (double)width / (double)height;
		glLoadIdentity();
		glOrtho(-aspect, aspect, -1.0, 1.0, 1.0, -1.0);

		glLightModeli(GL_LIGHT_MODEL_LOCAL_VIEWER, GL_TRUE);
		GLfloat light_ambient[] = {0.0, 0.0, 0.0, 1.0};
		GLfloat light_diffuse[] = {1.0, 1.0, 1.0, 1.0};
		GLfloat light_specular[] = {0.0, 0.0, 0.0, 1.0};
		GLfloat light_position[] = {0.0, 1.0, -1.0, 0.0};
		glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);
		glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
		glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
		glLightfv(GL_LIGHT0, GL_POSITION, light_position);

		float a = 1.0f;
		glLightf(GL_LIGHT0, GL_CONSTANT_ATTENUATION, a);
		GLfloat ambient[] = {0.0, 0.0, 0.0, 1.0};
		GLfloat diffuse[] = {1.0, 1.0, 1.0, 1.0};
		GLfloat specular[] = {0.0, 0.0, 0.0, 1.0};
		GLfloat shine = 100.0;
		glMaterialfv(GL_FRONT, GL_AMBIENT, ambient);
		glMaterialfv(GL_FRONT, GL_DIFFUSE, diffuse);
		glMaterialfv(GL_FRONT, GL_SPECULAR, specular);
		glMaterialf(GL_FRONT, GL_SHININESS, shine);

		render_model_gl1(&teapot);

		glfwSwapBuffers(window);
	}

	glfwDestroyWindow(window);
	glfwTerminate();


	free_model(&teapot);
	return EXIT_SUCCESS;
}