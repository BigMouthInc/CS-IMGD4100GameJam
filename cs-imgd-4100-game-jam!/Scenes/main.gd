extends Node2D

@onready var timer = $Timer
@onready var time = $Time


func _process(delta: float) -> void:
	time.set_text(str(snapped(timer.get_time_left(), 0.01)))
