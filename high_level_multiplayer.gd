extends Node

var ip_adress = "localhost"
var port = 12345

var peer : ENetMultiplayerPeer

func start_server():
	peer = ENetMultiplayerPeer.new()
	peer.create_server(port)
	multiplayer.multiplayer_peer = peer
func start_client():
	peer = ENetMultiplayerPeer.new()
	peer.create_client(ip_adress,port)
	multiplayer.multiplayer_peer = peer
