extends Node

export (int) var ball_speed
onready var ball = preload("res://Balls/Ball.tscn")
var width=1920
var height=1080
var border=32

func _ready():
	randomize()
	
	for i in 70:
		var b = ball.instance()
		b.position=Vector2(rand_range(border,width-border),rand_range(border,height-border))
		b.ball_speed = ball_speed
		add_child(b)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
