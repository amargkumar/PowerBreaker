extends StaticBody2D


const SPEED = 1000
var velocity = Vector2(0,0)




func _physics_process(delta):
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	position += velocity * delta
	position.x = clamp(position.x, -1631, 1581)
	

	
