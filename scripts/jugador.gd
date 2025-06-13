extends CharacterBody2D

@export var velocidad: float = 200.0

func _physics_process(_delta: float) -> void:
	var direccion = Input.get_vector("mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	
	# Movimiento
	velocity = direccion * velocidad
	move_and_slide()

	# Animación
	if direccion != Vector2.ZERO:
		if direccion.x > 0:
			$AnimatedSprite2D.animation = "caminar_derecha"
		elif direccion.x < 0:
			$AnimatedSprite2D.animation = "caminar_izquierda"
		elif direccion.y > 0:
			$AnimatedSprite2D.animation = "caminar_abajo"
		elif direccion.y < 0:
			$AnimatedSprite2D.animation = "caminar_arriba"
		
		if !$AnimatedSprite2D.is_playing():
			$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
