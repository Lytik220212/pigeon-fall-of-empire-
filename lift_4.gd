extends AnimatableBody2D
class_name lift3

var speed = 300

func _physics_process(delta):
	if Global.going_back == false:
		position.x -= speed * delta
	else:
		position.x += speed * delta
