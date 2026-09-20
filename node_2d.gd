extends Node2D

func _ready() -> void:
	Dialogic.signal_event.connect(DialogicSignal)
	pass

func DialogicSignal(arg: String):
	if arg == "exit_tele":
		get_tree().change_scene_to_file("res://scenes/house3.tscn")
	#if arg == "START_SCENE_HOUSE3":
		#print("есть сэр")
		#Dialogic.start("GIRL_CRYING")

#func from_one_scene_to_another(arg: String):
	#if arg == "exit_tele":
		#get_tree().change_scene_to_file("res://house3.tscn")
