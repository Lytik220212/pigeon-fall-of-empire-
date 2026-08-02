extends CharacterBody2D

class_name player

var speed = 301
var coins = 0
var can_walljump = true

func _enter_tree() -> void:
	set_multiplayer_authority(int(name))

func _ready() -> void:
	$Sprite2D.texture = load("res://pigeon-remodelotz.png")

func _physics_process(delta: float) -> void:
		if(Global.hp == 0):
			get_tree().change_scene_to_file("res://death.tscn")
	#if !is_multiplayer_authority():return
	#
		#if !is_multiplayer_authority():
			#return
		if(Input.is_action_just_pressed("1s")):
			get_tree().change_scene_to_file("res://3_1_world.tscn")
		if(Input.is_action_pressed("left") and !is_on_floor):
			print("hi")
			$Sprite2D.texture = load("res://pigeon-jump.png")
		if(Input.is_action_pressed("right") and !is_on_floor):
			print("hi2")
			$Sprite2D.texture = load("res://pigeon-jumpotz.png")
		var direction = Input.get_axis("left","right")
		velocity.x = direction * speed
		if(Input.is_action_just_pressed('jump') and is_on_floor()):
			velocity.y = -1050
		if(Input.is_action_just_pressed('jump') and is_on_wall() and can_walljump):
			velocity.y = -1050
			can_walljump = false
			await get_tree().create_timer(0.5).timeout
			can_walljump = true
		if( not is_on_floor()):
			velocity.y += 1300 * delta
			if($Sprite2D.texture == load("res://pigeon-remodel.png")):
				$Sprite2D.texture = load("res://pigeon-jump.png")
			if($Sprite2D.texture == load("res://pigeon-remodelotz.png")):
				$Sprite2D.texture = load("res://pigeon-jumpotz.png")
		if(is_on_floor()):
			if($Sprite2D.texture == load("res://pigeon-jump.png")):
				$Sprite2D.texture = load("res://pigeon-remodel.png")
			if($Sprite2D.texture == load("res://pigeon-jumpotz.png")):
				$Sprite2D.texture = load("res://pigeon-remodelotz.png")
		if(Input.is_action_pressed("left") and is_on_floor()):
			$Sprite2D.texture = load("res://pigeon-remodel.png")
		if(Input.is_action_pressed("right")and is_on_floor()):
			$Sprite2D.texture = load("res://pigeon-remodelotz.png")
		move_and_slide()
	#if(Input.is_action_pressed("1s") and Input.is_action_pressed("2s")and Input.is_action_pressed("3s")):
		#get_tree().change_scene_to_file("res://prins_govnoed.tscn")

func _on_area_2_dplayer_body_entered(body: Node2D) -> void:
	if body is bomb :
		Global.hp = 0
