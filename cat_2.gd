extends CharacterBody2D

class_name cat

func _physics_process(delta: float) -> void:
	if(Global.cat_going_right == true):
		position.x += 270 * delta
	else :
		position.x -= 270 * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.hp -= 3
