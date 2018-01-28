extends RigidBody2D

export (int) var ball_speed

onready var score=.5
onready var ball_texture = get_node("Ball_Sprite")

func _ready():
	self.set_meta("ball",true)
	var initial_velocity = Vector2( rand_range(-1, 1), rand_range( -1, 1)).normalized()
	apply_impulse(Vector2(), initial_velocity * ball_speed)
	set_color(score)


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Ball_body_entered( body ):
	if (body.has_meta("player")):
		score = body.score
		set_color(score)
	
	if (body.has_meta("ball")):
		score = (score + body.score)/2
		set_color(score)


func set_color(score):
	var score_color = Color(1.0-score,0.5,score,1)
	ball_texture.modulate = score_color