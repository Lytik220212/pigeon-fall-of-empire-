extends Button




func _on_button_down() -> void:
	Global.speedrun = false
	Global.timer = 999
	get_tree().change_scene_to_file("res://prehistory.tscn")
