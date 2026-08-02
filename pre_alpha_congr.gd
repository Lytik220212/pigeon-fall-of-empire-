extends Node2D

#var save_path := "user://save_game.save"

func _process(delta: float) -> void:
	if(Global.timer <= Global.best_lap ):
		print("Good work !")
		Global.best_lap = Global.timer
		Global.save()
		$record.text = "NEW RECORD: " + str(Global.best_lap)
	else:
		$record.visible = false 
