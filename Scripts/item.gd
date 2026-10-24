extends Area3D


func _on_body_entered(body: Node3D) -> void:
	#print(body.name, " entrou no item")
	if body.is_in_group("player"):
		queue_free()
	
