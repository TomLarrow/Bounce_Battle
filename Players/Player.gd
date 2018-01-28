extends RigidBody2D

export (int) var ball_speed
export (float) var score

func _ready():
	
	self.set_meta("player", true)
	
	var score_color = Color(1.0-score,0.5,score,1)
	get_node("Player_Sprite").modulate = score_color
	
	var initial_velocity = Vector2( rand_range(-1, 1), rand_range( -1, 1)).normalized()
	apply_impulse(Vector2(), initial_velocity * ball_speed)