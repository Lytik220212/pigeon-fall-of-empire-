extends Button


func _on_button_down() -> void:
	Global.function = "server"
	get_tree().change_scene_to_file("res://multiplayer_test_scene.tscn")
	
