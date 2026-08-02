extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_check_box_toggled(toggled_on: bool) -> void:
	if(toggled_on == false):
		DisplayServer.VSYNC_DISABLED
	else:
		DisplayServer.VSYNC_ENABLED


func _on_check_box_2_toggled(toggled_on: bool) -> void:
	if(toggled_on == false):
		Global.fps_enabled = false
	else:
		Global.fps_enabled = true
