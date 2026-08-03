extends CharacterBody2D

var can = true
var num = randi() %3
var dead = false

func shoot():
	can = false
	var canSec = false
	if(Global.canBeatCatBoss == false and dead == false):
		await get_tree().create_timer(0.5).timeout
		for i in 2:
			await get_tree().create_timer(0.5).timeout
			var bullet = preload("res://bullet.tscn").instantiate()
			$gun.add_child(bullet)
			canSec = true
		if(canSec == true):
			await get_tree().create_timer(1.5).timeout
			for i in 2:
				num = randi() %1
				var bombBOSS = preload("res://bomb_boss.tscn").instantiate()
				if num == 0:
					$"../bombBOSSspawn".add_child(bombBOSS)
				else:
					$"../bombBOSSspawn3".add_child(bombBOSS)
			await get_tree().create_timer(1.2).timeout
			for i in 2:
				num = randi() %3
				var bombBOSS = preload("res://bomb_boss.tscn").instantiate()
				if num == 0:
					$"../bombBOSSspawn2".add_child(bombBOSS)
				else:
					$"../bombBOSSspawn4".add_child(bombBOSS)
			await get_tree().create_timer(1.0).timeout
			var explosion = preload("res://explosion.tscn").instantiate()
			var num2 = randi() %2
			if(num2 == 0):
				$"../explosion/spawn".add_child(explosion)
			if(num2 == 1):
				$"../explosion/spawn2".add_child(explosion)
			if(num2 == 2):
				$"../explosion/spawn3".add_child(explosion)
			await get_tree().create_timer(0.5).timeout
			explosion.queue_free()
			Global.bossCatHP -= 1
			Global.canBeatCatBoss = true
	if(Global.canBeatCatBoss == true):
		await get_tree().create_timer(1.5).timeout
		Global.canBeatCatBoss = false
		shoot()
	if(Global.bossCatHP == 2):
		$"../Camera2D/bossHP/BossHp4".hide()
	if(Global.bossCatHP == 1):
		$"../Camera2D/bossHP/BossHp3".hide()
	if(Global.bossCatHP == 0):
		$"../Camera2D/bossHP/BossHp2".hide()
	if(Global.bossCatHP == -1):
		$"../Camera2D/bossHP/BossHp".hide()
		$"../Camera2D/bossHP/BossHPbar".hide()
		dead = true
	if dead == true:
		queue_free()
		var portal = preload("res://portal.tscn").instantiate()
		$"../portalSpawn".add_child(portal)

func _physics_process(delta: float) -> void:
	if ( can == true):
		shoot()
