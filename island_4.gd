extends CharacterBody2D
class_name lift

func _physics_process(delta: float) -> void:
	if Global.going_back == false:
		velocity = Vector2(0, -300)
	else:
		velocity = Vector2(0, 300)

	move_and_slide()

#func _on_area_2d_body_entered(body: Node2D) -> void:
	#if body is player:
		#$"../player".position.y -= 10
