extends Button


func _on_button_down() -> void:
	Global.speedrun = true
	Global.timer = 0.0
	get_tree().change_scene_to_file("res://prehistory.tscn")
	#Global.mode = "speedrun"
