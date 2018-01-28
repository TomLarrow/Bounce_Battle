extends RigidBody2D

export (int) var player_speed
export (float) var score
onready var ball_texture = get_node("Player_Sprite")
var original_score

func _ready():
	original_score = score
	self.set_meta("player", true)
	set_color(score)
	var initial_velocity = Vector2( rand_range(-1, 1), rand_range( -1, 1)).normalized()
	apply_impulse(Vector2(), initial_velocity * player_speed)

	
func set_color(score):
	var score_color = Color(1.0-score,0.5,score,1)
	ball_texture.modulate = score_color

func _lightweight():
	score = 0.5
	mass=9
	set_color(score)

func _return_to_normal():
	score = original_score
	mass=1000
	set_color(score)