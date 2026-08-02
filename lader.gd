extends StaticBody2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player and Input.is_action_pressed("get_up_by_lader"):
		pass
