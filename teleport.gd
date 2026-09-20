extends Area2D

@export var nextSceneName: String


func _on_body_entered(body: Node2D) -> void:
	var NextScene = load("res://scenes/" + nextSceneName + ".tscn")
	print("сигнал получен")
	get_tree().change_scene_to_packed(NextScene)
