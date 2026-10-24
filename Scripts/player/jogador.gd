extends CharacterBody3D
const VELOCIDADE := 2.0
const  GRAVIDADE := 9.8

#func _physics_process(delta: float) -> void:
	#if Input.is_action_pressed("move_left"):
		#velocity.x = 3
	#elif Input.is_action_pressed("move right"):
		#velocity.x = -3
	#elif Input.is_action_pressed("move_forward"):
		#velocity.z = 5
	#elif Input.is_action_pressed("move_back"):
		#velocity.z= -5 
	#else:
		#velocity.x = 0
		#velocity.z = 0
#
	#move_and_slide()

func _physics_process(delta: float) -> void:
	var direcao := Vector3.ZERO
	direcao = direcao.normalized()

	direcao.x = Input.get_axis("move_left", "move right")
	direcao.z = Input.get_axis("move_forward", "move_back")

	velocity.x = direcao.x * VELOCIDADE
	velocity.z = direcao.z * VELOCIDADE
	
	if not is_on_floor():
		velocity.y -= GRAVIDADE * delta
	
	move_and_slide()
