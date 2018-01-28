extends Node

export (int) var ball_speed
export (int) var num_balls
onready var ball = preload("res://Balls/Ball.tscn")
onready var score_bar = get_node("Score_Bar")
var width=1920
var height=1080
var border=32
var score
var totalscore

func _ready():
	randomize()
	
	for i in num_balls:
		var b = ball.instance()
		b.position=Vector2(rand_range(border,width-border),rand_range(border,height-border))
		b.ball_speed = ball_speed
		add_child(b)

func _process(delta):
	totalscore=0
	for n in get_children():
		if (n.has_meta("ball")):
			totalscore += n.score
	
	score = totalscore/num_balls
	#print(score)
	var score_destination=((score*100 -40) * 96)
	score_bar.position.x= score_bar.position.x + (score_destination - score_bar.position.x)*delta