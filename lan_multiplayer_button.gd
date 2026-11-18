extends Button



func _on_button_down() -> void:
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(4444,41)
	multiplayer.multiplayer_peer = peer
	
