extends MultiplayerSpawner

@export var player : PackedScene

func _ready() -> void:
	print("peer conecting...")
	multiplayer.peer_connected.connect(spawn_player)
func spawn_player(id:int):
	print("Peer connected signal fired! ID:", id)
	if !multiplayer.is_server():return
	print("player is spawning...")
	var player_obj : Node = player.instantiate()
	player_obj.name = str(id)
	
	get_node(spawn_path).call_deferred("add_child",player_obj)
