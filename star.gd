extends StaticBody2D

func _process(delta: float) -> void:
	$"../player/star".text = "STAR: " + str(Global.stars)
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.stars += 1
		$"../player/star".text = "STAR: " + str(Global.stars)
		queue_free()
