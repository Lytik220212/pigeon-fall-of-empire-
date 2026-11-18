extends Node2D

var connecting_now = false

func _enter_tree() -> void:
	Global.speedrun = true
	Global.timer = 10

func connecting():
	if connecting_now:
		return

	connecting_now = true

	var peer = ENetMultiplayerPeer.new()

	multiplayer.connected_to_server.connect(func():
		print("CLIENT CONNECTED!")
		add_item.rpc_id(1, str(Global.timer))
	)

	multiplayer.connection_failed.connect(func():
		print("CONNECTION FAILED!")
		connecting_now = false
	)

	var error = peer.create_client("127.0.0.1", 4444)

	if error != OK:
		print("CLIENT ERROR: ", error)
		connecting_now = false
		return

	multiplayer.multiplayer_peer = peer

@rpc("any_peer", "call_remote", "reliable")
func add_item(result: String):
	pass

func _process(delta: float) -> void:
	if Global.timer <= Global.best_lap:
		Global.best_lap = Global.timer
		Global.save()
		$record.text = "NEW RECORD: " + str(Global.best_lap)
		connecting()
	else:
		$record.visible = false
