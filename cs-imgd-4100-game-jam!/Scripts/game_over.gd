extends Node2D

@onready var score = $ScoreLabel
@onready var high = $HighLabel

func _ready() -> void:
	score.text = "Your Score: " + str(GlobalVars.current_score)
	if GlobalVars.current_score > GlobalVars.hScore:
		GlobalVars.hScore = GlobalVars.current_score
		high.text += "New high score!\n"
	high.text += "High Score: " + str(GlobalVars.hScore)
