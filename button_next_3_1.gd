extends Button


func _on_button_down() -> void:
	Global.current_lvl = 3
	get_tree().change_scene_to_file("res://3_1_world.tscn")
