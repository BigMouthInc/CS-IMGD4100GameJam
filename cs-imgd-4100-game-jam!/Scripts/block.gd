extends Area2D

signal point_signal(score)
@onready var coin = $Coin

func _on_body_entered(body: Node2D) -> void:
	coin.play()
	await coin.finished
	queue_free()
	emit_signal('point_signal', 1)
