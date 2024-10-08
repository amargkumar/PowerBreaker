class_name FireBall extends PowerUp
var used = false





func _on_body_entered(body):
	if body is RigidBody2D and used == false:
		used = true
		queue_free()
		body.setOnFire()
		
