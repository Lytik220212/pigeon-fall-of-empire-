extends CharacterBody2D

class_name sbullet

func _physics_process(delta: float) -> void:
	velocity.x += 30
	move_and_slide()
