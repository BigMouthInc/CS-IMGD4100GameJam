extends Area2D

signal point_signal(score)

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	emit_signal('point_signal', 1)
