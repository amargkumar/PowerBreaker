class_name MultiBall extends PowerUp
var used = false





func _on_body_entered(body):
	if body is RigidBody2D and used == false:
		used = true
		queue_free()
		#create 1 more balls
		var newNode = body.duplicate(DUPLICATE_SIGNALS | DUPLICATE_SCRIPTS)
		#Uncomment this for debugging purposes:
		#newNode.modulate = Color(randf(), randf(), randf(), 1)
		newNode.linear_velocity *= -1
		get_parent().add_child(newNode)
		
