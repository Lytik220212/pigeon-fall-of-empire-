extends Node2D

@export var player : PackedScene
var peer

func _ready(id = 1) -> void:
	if(Global.function == "server"):
		hlm.start_server()
	if(Global.function == "client"):
		hlm.start_client()
