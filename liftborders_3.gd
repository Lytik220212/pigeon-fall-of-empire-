extends StaticBody2D


func _on_area_2_dlift_body_entered(body: Node2D) -> void:
	if body is lift5:
		Global.going_right = true
		print("vita")
		


func _on_area_2d_2_lift_body_entered(body: Node2D) -> void:
	if body is lift5:
		Global.going_right = false
		print("wass'up")
