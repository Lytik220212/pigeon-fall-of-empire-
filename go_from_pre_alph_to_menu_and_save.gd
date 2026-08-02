extends Button



func _on_button_down() -> void:
	Global.current_lvl = 1
	Global.coins = 0
	Global.stars = 0
	get_tree().change_scene_to_file('res://menu.tscn')
