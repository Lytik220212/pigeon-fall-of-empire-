extends Node2D

var peer = ENetMultiplayerPeer.new()
var port = 5040
var ip = "localhost"
@export var player: PackedScene

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	Global.load()
	if(Global.best_lap == 0 or 0.0):
		Global.delete()
		Global.load()
		$best_lap.text = str(Global.best_lap)

func _on_button_button_down() -> void:
	$Button.visible = false
	$Button2.visible = false
	peer.create_server(port)
	multiplayer.multiplayer_peer = peer
	multiplayer.peer_connected.connect(_add_player)
	_add_player()
func _add_player(id = 1):
	var player_obj = player.instantiate()
	player_obj.name = str(id)
	call_deferred("add_child",player_obj)
	


func _on_button_2_button_down() -> void:
	peer.create_client(ip,port)
	multiplayer.multiplayer_peer = peer
