extends Node

var current_score = 0

func _ready() -> void:
	get_node("./block").point_signal.connect(add_score)
	
func add_score(amount: int):
	current_score += amount
	print("Signal Recieved")
