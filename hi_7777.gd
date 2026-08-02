extends CharacterBody2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is sbullet:
		$"../finishline".visible = true
		$"../finishline/Sprite2D".visible = true
		$"../finishline/Sprite2D2".visible = true
		$"../finishline/Sprite2D3".visible = true
		$"../Sprite2D".visible = false
		$"../floor".visible = false
		$".".visible = false
		$SecretEnemy.visible = false
		$CollisionShape2D.visible = false
		$"../playerSECRET".visible = false
		$"../playerSECRET/Sprite2D".visible = false
		$"../playerSECRET/CollisionShape2D".visible = false
		$"../playerSECRET/coins".visible = false
		$"../playerSECRET/Area2D".visible = false
		$"../playerSECRET/Area2D/CollisionShape2D".visible = false
		$"../playerSECRET/HP".visible = false
		$"../SecretFlag2".visible = false
		get_tree().create_timer(2.0).timeout
		get_tree().quit()
