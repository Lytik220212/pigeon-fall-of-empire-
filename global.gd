extends Node2D

var on_lader = false
var coins = 0
var hp = 3
var bossCatHP = 3
var canBeatCatBoss = false
var fps_enabled = false
var stars = 0
var scoreboard = {}
var function = "nothing"
var current_lvl = 1
var going_back = false
var going_right = true
var cat_going_right = true
var mode = ""
var timer = 0.0
var speedrun = false
var best_lap = 999.0
var spawn_player = false
var config
var path = "user://save_final_pre_alpha2bosscat.cfg"
var section_name = "game"

func _process(delta: float) -> void:
	if(Global.mode == "normal"):
		get_tree().change_scene_to_file("res://chapter_chosing.tscn")
	if(Global.mode == "speedrun"):
		get_tree().change_scene_to_file("res://chapter_chosing.tscn")
func changeScoreboard(result):
	
	scoreboard["player"] = str(result)
func save():
	config.set_value(section_name,"record",best_lap)
	config.save(path)
func load():
	config = ConfigFile.new()
	config.load(path)
	Global.best_lap = config.get_value(section_name,"record",best_lap)
func delete():
	Global.best_lap = 999
	config.set_value(section_name,"record",Global.best_lap)
	config.save(path)
@rpc("any_peer", "call_remote", "reliable")
func submit_record(result: float):

	if not multiplayer.is_server():
		return

	var player_id = multiplayer.get_remote_sender_id()

	scoreboard[str(player_id)] = result

	print("New record: ", result)

	receive_scoreboard.rpc(scoreboard)


@rpc("authority", "call_remote", "reliable")
func receive_scoreboard(data: Dictionary):
	scoreboard = data
	print("Scoreboard updated: ", scoreboard)
