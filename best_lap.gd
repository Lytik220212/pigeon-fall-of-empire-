extends Label


func _ready() -> void:
	Global.load()
	text = "BEST LAP: "+ str(Global.best_lap)
