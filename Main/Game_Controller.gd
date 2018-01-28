extends Node

onready var pc = preload("res://Players/Player_Controller.tscn")
onready var bc = preload("res://Balls/Ball_Controller.tscn")
onready var title = preload("res://Title/Title_Screen.tscn")

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
	b = bc.instance()
	add_child(b)
	p = pc.instance()
	add_child(p)

func end_game(score):
	find_node("Player_Controller").queue_free()
	find_node("Ball_Controller").queue_free()
	t = title.instance()
	add_child(t)
	