extends Node2D

@onready var block = preload("res://Scenes/block.tscn")

func _on_block_timer_timeout() -> void:
	
	var random_x = randf_range(0, 550)
	var random_y = randf_range(-330, 0)
	var random_position = Vector2(random_x, random_y)
	
	var placeBlock  = block.instantiate()
	placeBlock.position = random_position
	get_parent().add_child(placeBlock)
	
	var game_manager = get_node("/root/Main/GameManager")
	placeBlock.point_signal.connect(game_manager.add_score)
