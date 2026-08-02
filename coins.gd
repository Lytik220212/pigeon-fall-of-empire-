extends Label

func _process(delta: float) -> void:
	text = "BREAD: " + str(Global.coins)
