extends AnimatableBody2D
class_name lift5

func  _physics_process(delta: float) -> void:
	if Global.going_right == true:
		position.x += 270 * delta
	else :
		position.x -= 270 * delta
