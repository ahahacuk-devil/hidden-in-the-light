extends Node2D

#@onready var collision_shape = $Sprite2D/Collision_later

var player_in_area = false
var signal_received = false   # флаг, получен ли сигнал "end_scene_radio1"

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)


func _on_dialogic_signal(arg: String):
	if arg == "end_scene_radio1":
		signal_received = true
	if arg == "start_scary_radio":
		Dialogic.start("Scary_radio")
	if arg == "home_to_world":
		get_tree().change_scene_to_file("res://scenes/world.tscn")


func _process(delta: float) -> void:
	if player_in_area and Input.is_action_just_pressed("dialog"):
		if signal_received:
			Dialogic.start("LATTER")
		else:
			Dialogic.start("no_latter")


func _on_sprite_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true
	pass # Replace with function body.


func _on_sprite_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false
