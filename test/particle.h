typedef struct
{
	float x, y; // position
	float vx, vy; // velocity
	float ax, ay; // acceleration
} Particle;

#define new(T) malloc(sizeof(T))

static Particle create_particle(float x, float y)
{
	Particle *self = new(Particle);
	self->x = x;
	self->y = y;
	self->vx = 0.0f;
	self->vy = 0.0f;
	self->ax = 0.0f;
	self->ay = 0.0f;
}

static void particle_update(Particle* self, float dt)
{
	self->x += self->vx * dt;
	self->y += self->vy * dt;
	self->vx += self->ax * dt;
	self->vy += self->ay * dt;
	self->ax = 0.0f;
	self->ay = 0.0f;
}

#define Particle(x, y) create_particle(x, y)

Particle p = Particle(25, 7);
