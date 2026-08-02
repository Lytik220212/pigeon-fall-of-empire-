extends Node2D

func _physics_process(delta: float) -> void:
	rotate(deg_to_rad(10))



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.hp = 0
