extends AnimatableBody2D

class_name lift6

func _physics_process(delta: float) -> void:
	if(Global.going_right):
		position.x += 3.5
	if(!Global.going_right):
		position.x -= 3.5
