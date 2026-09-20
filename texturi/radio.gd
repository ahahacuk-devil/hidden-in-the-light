extends Node2D

var player_in_area = false


func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_area:
		if Input.is_action_just_pressed("dialog"):
			Dialogic.start("RADIO_GIRL")
	pass


func _on_sprite_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true
	pass # Replace with function body.


func _on_sprite_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false
