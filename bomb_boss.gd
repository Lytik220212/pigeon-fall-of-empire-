extends CharacterBody2D
class_name bomb_boss

var speed = 1000

func _physics_process(delta: float) -> void:
	position.y += speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.hp = 0
