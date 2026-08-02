extends CharacterBody2D
class_name bullet

var speed = 1400
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= speed * delta
	




func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is player:
		Global.hp = 0
