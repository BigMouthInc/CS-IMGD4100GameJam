extends Area2D

@onready var audio = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	body.get_node("CollisionShape2D").queue_free()
	$Timer.start()
	audio.play()
	

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
