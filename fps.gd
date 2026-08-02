extends Label

func _process(delta: float) -> void:
	if(Global.fps_enabled == true):
		Engine.max_fps = 999
		text = "FPS:" + str(Engine.get_frames_per_second())
	else:
		visible = false
