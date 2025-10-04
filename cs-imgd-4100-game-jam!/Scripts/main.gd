extends Node2D

@onready var timer = $Timer
@onready var time = $Time
@onready var scorePrint = $ScoreCt

func _process(delta: float) -> void:
	time.set_text(str(snapped(timer.get_time_left(), 0.01)))
	scorePrint.set_text("Score: " + str(GlobalVars.current_score))
