extends Control

onready var orange_player = get_node("Orange_Player")
onready var blue_player = get_node("Blue_Player")
var orange_ready
var blue_ready

func _ready():
	orange_ready=false
	blue_ready=false

func _process(delta):
	if Input.is_action_pressed("orange_input_key"):
		orange_ready = true
		orange_player.modulate = Color(1, 0.5, 0, 1)
	
	if Input.is_action_pressed("blue_input_key"):
		blue_ready = true
		blue_player.modulate = Color(0, 0.5, 1, 1)
		
	if orange_ready && blue_ready:
		get_parent().start_game()
		queue_free()
