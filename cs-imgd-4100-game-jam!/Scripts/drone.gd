extends Node2D

const speed = 50
@onready var sprite = $AnimatedSprite2D

func _process(delta: float) -> void:
	position = position.move_toward(GlobalVars.playerPos, speed * delta)
	if global_position.x < GlobalVars.playerPos.x and not sprite.flip_h:
		sprite.flip_h = true
	elif global_position.x > GlobalVars.playerPos.x and sprite.flip_h:
		sprite.flip_h = false
	
