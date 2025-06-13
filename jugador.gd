extends CharacterBody2D

@export var velocidad: float = 200.0

func _physics_process(_delta: float) -> void:
	var direccion = Input.get_vector("mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")

	# Normalizamos para evitar que diagonal sea más rápida
	velocity = direccion * velocidad
	move_and_slide()
