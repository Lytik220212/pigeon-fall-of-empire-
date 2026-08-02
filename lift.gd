extends AnimatableBody2D

class_name lift68

func _physics_process(delta: float) -> void:
	if(Global.going_right == true):
		position.x += 5
	if(Global.going_right == false):
		position.x -= 5
