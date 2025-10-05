extends Node

@onready var block = $"../Block"

func _ready() -> void:
	block.point_signal.connect(add_score)

	
func add_score(amount: int):
	GlobalVars.current_score += amount
