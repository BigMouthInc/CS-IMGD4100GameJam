extends Node

var current_score = 0
@onready var block = $"../Spawner/Block"

func _ready() -> void:
	block.point_signal.connect(add_score)

	
func add_score(amount: int):
	current_score += amount
	print("Score: ", current_score)
