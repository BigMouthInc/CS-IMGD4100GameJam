extends Node2D

@onready var block = preload("res://Scenes/block.tscn")

func _on_timer_timeout() -> void:
	var viewport_size = get_viewport_rect().size
	var random_x = randf_range(0, viewport_size.x)
	var random_y = randf_range(0, viewport_size.y)
	var random_position = Vector2(random_x, random_y)
	
	var placeBlock  = block.instantiate()
	placeBlock.position = random_position
	get_parent().add_child(placeBlock)
