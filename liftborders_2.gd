extends StaticBody2D



func _on_area_2_dlift_1_body_entered(body: Node2D) -> void:
	if body is lift2:
		Global.going_back = false
		print("down")


func _on_area_2_dlift_2_body_entered(body: Node2D) -> void:
	if body is lift2:
		Global.going_back = true
		print("top")
