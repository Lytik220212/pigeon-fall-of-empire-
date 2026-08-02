extends Node2D

var can_damage = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player :
		Global.hp -= 3
		print("test")

func _process(delta: float) -> void:
	if(Global.hp == 3):
		$"1hp".visible = true
		$"2hp".visible = true
		$"3hp".visible = true
		#$"../../deathGUI".visible = false
	if(Global.hp == 2):
		$"1hp".visible = true
		$"2hp".visible = true
		$"3hp".visible = false
		#$"../../deathGUI".visible = false
	if(Global.hp == 1):
		$"1hp".visible = true
		$"2hp".visible = false
		$"3hp".visible = false
		#$"../../deathGUI".visible = false
	if(Global.hp == 0):
		#$"../..".position = $"../../../spawner".position
		$"1hp".visible = false
		$"2hp".visible = false
		$"3hp".visible = false
		get_tree().create_timer(1.0)
		get_tree().change_scene_to_file("res://death.tscn")
		Global.coins = 0
		Global.hp = 3


func _on_area_2dthorns_body_entered(body: Node2D) -> void:
	if(can_damage == true):
		damagging()
		can_damage = false
		print("test")
		await get_tree().create_timer(0.5).timeout
		print("test2")
		damagging()
func damagging():
	if(can_damage == true):
		print("i hurt him")
		Global.hp -= 1



	


func _on_area_2_dplayer_body_entered(body: Node2D) -> void:
	if body is bomb:
		Global.hp -= 3
		print("i desotry him")
		Global.coins = 0
