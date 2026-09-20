extends CharacterBody2D

@export var speed = 100

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_pressed("right") and Input.is_action_pressed("down"):
		$AnimatedSprite2D.play("downright")
	if Input.is_action_pressed("right") and Input.is_action_pressed("up"):
		$AnimatedSprite2D.play("upright")
	if Input.is_action_pressed("left") and Input.is_action_pressed("down"):
		$AnimatedSprite2D.play("downleft")
	if Input.is_action_pressed("left") and Input.is_action_pressed("up"):
		$AnimatedSprite2D.play("upleft")
	if Input.is_action_pressed("up") and not Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		$AnimatedSprite2D.play("up")
	if Input.is_action_pressed("down") and not Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		$AnimatedSprite2D.play("down")
	if Input.is_action_pressed("right") and not Input.is_action_pressed("up") and not Input.is_action_pressed("down"):
		$AnimatedSprite2D.play("right")
	if Input.is_action_pressed("left") and not Input.is_action_pressed("up") and not Input.is_action_pressed("down"):
		$AnimatedSprite2D.play("left")

	velocity = input_direction * speed
	if Input.is_action_just_pressed("run"):
		speed = 170
	if Input.is_action_just_released("run"):
		speed = 100
		
	if not input_direction :
		$AnimatedSprite2D.play("idle")

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()

func player():
	pass
