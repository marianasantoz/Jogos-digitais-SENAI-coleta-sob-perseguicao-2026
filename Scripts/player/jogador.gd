extends CharacterBody3D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move right"):
		velocity.x = 5
	move_and_slide()
		
