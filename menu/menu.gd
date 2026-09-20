extends CanvasLayer


func _on_play_2_pressed() -> void:
	get_tree().quit()


func _on_play_pressed() -> void:
	#get_tree().change_scene_to_file("res://scene/world.tscn")
	Dialogic.start("timeline")
