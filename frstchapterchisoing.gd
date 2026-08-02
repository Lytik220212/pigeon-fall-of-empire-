extends Button


func _on_button_down() -> void:
	if(Global.current_lvl == 1):
		get_tree().change_scene_to_file("res://game.tscn")
	if(Global.current_lvl == 2):
		get_tree().change_scene_to_file("res://2_levelof_1_world.tscn")
	if(Global.current_lvl == 3):
		get_tree().change_scene_to_file("res://3_1_world.tscn")
