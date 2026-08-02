extends Label

func _process(delta: float) -> void:
	if(Global.timer > 0.0 and (Global.timer < Global.best_lap)):
		print("Good work !")
		Global.best_lap = Global.timer
		text = "NEW RECORD: "+ str(Global.best_lap)
