extends RigidBody2D

export (int) var ball_speed

onready var score=.5
onready var ball_texture = get_node("Ball_Sprite")

func _ready():
	var score_color = Color(1.0-score,0.5,score,1)
	ball_texture.modulate = score_color
	var initial_velocity = Vector2( rand_range(-1, 1), rand_range( -1, 1)).normalized()
	apply_impulse(Vector2(), initial_velocity * ball_speed)


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
