extends Node

@onready var block = $"../Spawner/Block"

func _ready() -> void:
	block.point_signal.connect(add_score)

	
func add_score(amount: int):
	GlobalVars.current_score += amount
	print("Score: ", GlobalVars.current_score)
