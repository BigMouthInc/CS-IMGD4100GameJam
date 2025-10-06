extends Node2D

@onready var block = preload("res://Scenes/block.tscn")
@onready var platforms = $"../Platforms"
var positions = []

func _on_block_timer_timeout() -> void:
	
	var random_x = randf_range(50, 550)
	var random_y = randf_range(-330, -50)
	var random_position = Vector2(random_x, random_y)
	
	while nearBlock(random_position):
		random_x = randf_range(50, 550)
		random_y = randf_range(-310, -50)
		random_position = Vector2(random_x, random_y)
	
	positions.append(random_position)
	
	var placeBlock  = block.instantiate()
	placeBlock.position = random_position
	get_parent().add_child(placeBlock)
	
	var game_manager = get_node("/root/Main/GameManager")
	placeBlock.point_signal.connect(game_manager.add_score)

func nearBlock(new_pos: Vector2) -> bool:

	for platform in platforms.get_children():
		if platform.position.x - 8 < new_pos.x and new_pos.x < platform.position.x + 8:
			return true
		if  platform.position.y - 8 > new_pos.y and new_pos.y > platform.position.y + 8:
			return true
			
	for position in positions:
		if position.x - 5 < new_pos.x and new_pos.x < position.x + 5:
			return true
		if  position.y - 5 > new_pos.y and new_pos.y > position.y + 5:
			return true
	return false
