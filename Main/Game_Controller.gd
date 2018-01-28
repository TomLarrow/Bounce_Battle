extends Node

onready var pc = preload("res://Players/Player_Controller.tscn")
onready var bc = preload("res://Balls/Ball_Controller.tscn")
onready var title = preload("res://Title/Title_Screen.tscn")
var t
var b
var p

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	t = title.instance()
	add_child(t)
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func start_game():
	print ("Starting game")
	b = bc.instance()
	add_child(b)
	p = pc.instance()
	add_child(p)

func end_game(score):
	b.queue_free()
	p.queue_free()
	t = title.instance()
	add_child(t)
	if score == 0:
		pass
	else:
		if score > .500:
			t.find_node("blue_wins").visible=true
		else:
			t.find_node("orange_wins").visible=true
	