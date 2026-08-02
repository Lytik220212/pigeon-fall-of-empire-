extends AnimatableBody2D
class_name lift4

var speed = 300

func _physics_process(delta):
	if Global.going_back == false:
		position.y -= speed * delta
	else:
		position.y += speed * delta
