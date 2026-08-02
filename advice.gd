extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is player:
		visible = true
		$Camera2D.make_current()
		


func _on_button_button_down() -> void:
	queue_free()
