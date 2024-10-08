class_name LongerPaddle extends PowerUp
var used = false


var scaleXSize = 1.8


func _on_body_entered(body):
	if body is RigidBody2D and used == false:
		used = true
		queue_free()
		#increase the paddle size
		var paddle = get_node("../Paddle")
		paddle.scale.x = scaleXSize
		
