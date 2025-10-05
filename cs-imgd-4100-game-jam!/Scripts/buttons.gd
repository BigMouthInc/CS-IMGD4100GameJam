extends Button




func _on_quit_button_up() -> void:
	get_tree().quit()


func _on_restart_button_up() -> void:
	GlobalVars.current_score = 0
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
