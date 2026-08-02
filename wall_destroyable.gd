extends StaticBody2D

var in_the_destroyable_wall = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player :
		in_the_destroyable_wall = true
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is player:
		in_the_destroyable_wall = false
func _physics_process(delta: float) -> void:
	if(in_the_destroyable_wall == true and Input.is_action_just_pressed("destroy")):
		queue_free()
		
