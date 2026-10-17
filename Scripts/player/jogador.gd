extends CharacterBody3D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move right"):
		velocity.x = 3
	elif Input.is_action_pressed("move_left"):
		velocity.x = -3
	else:
		velocity.x = 0

	move_and_slide()
	
		
