extends Button


func _on_button_down() -> void:
	Global.mode = "speedrun"
	Global.current_lvl = 1
	get_tree().change_scene_to_file("res://game.tscn")
	print("speedrun")
