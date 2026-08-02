extends CharacterBody2D
class_name explosion

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.hp = 0
