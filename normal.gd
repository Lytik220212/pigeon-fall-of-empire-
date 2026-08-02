extends Button



func _on_button_down() -> void:
	Global.mode = "normal"
	Global.current_lvl = 1
	get_tree().change_scene_to_file("res://chapter_chosing.tscn")
	print("normal")
	
