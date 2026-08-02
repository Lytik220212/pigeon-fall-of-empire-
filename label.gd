extends Label

func _process(delta: float) -> void:
	if(Global.speedrun == true):
		Global.timer += delta
		print("timer")
		text = str(round(Global.timer)) 
	else :
		visible = false
