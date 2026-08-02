extends Button


func _on_button_down() -> void:
	Global.current_lvl = 2
	get_tree().change_scene_to_file("res://2_levelof_1_world.tscn")
