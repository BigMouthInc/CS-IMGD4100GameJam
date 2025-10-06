extends CharacterBody2D

const speed = 300.0
var x_direction = -.5

@onready var raycast = $RayCast2D

func _physics_process(delta: float) -> void:
	
	raycast.force_raycast_update()
	if(raycast.is_colliding()):
		x_direction = -x_direction
		raycast.rotate(PI)
		
	var direction = Vector2(x_direction, 0)
	
	velocity = direction * speed
	
	move_and_slide()
	
