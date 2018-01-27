extends RigidBody2D

export (int) var ball_speed

func _ready():
	var initial_velocity = Vector2( rand_range(-1, 1), rand_range( -1, 1)).normalized()
	apply_impulse(Vector2(), initial_velocity * ball_speed)