extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

var change_sceneSecondFloor = preload("res://escenas/secondFloor.tscn")
func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	print("Colisionó con: ", body.name)
	get_tree().change_scene_to_packed(change_sceneSecondFloor)
