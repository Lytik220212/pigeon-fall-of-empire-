extends StaticBody2D


func _on_catbrd_1_body_entered(body: Node2D) -> void:
	if body is cat:
		Global.cat_going_right = true
		print("hi")



func _on_catbrd_2_body_entered(body: Node2D) -> void:
	if body is cat:
		Global.cat_going_right = false
		print("bye")
