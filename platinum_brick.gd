class_name PlatinumBrick extends Brick


# Called when the node enters the scene tree for the first time.
func _ready():
	#The platinum brick should be able to take more hits
	hitsRemaining = 2
	if randi() % 2 == 1:
		var powerRoll = randi() % 3
		if powerRoll == 0:
			$AnimatedSprite2D.modulate = Color(0,0,1)
			curentPowerUp =load("res://multiball.tscn")
		elif powerRoll == 1:
			$AnimatedSprite2D.modulate = Color(1,1,0)
			curentPowerUp =load("res://longer_paddle.tscn")
		elif powerRoll == 2:
			$AnimatedSprite2D.modulate = Color(1,0,0)
			curentPowerUp =load("res://fire_ball.tscn")
		hasPowerUp = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hit(ball):
	if hitsRemaining == 0 or ball.onFire == true:
		Main.increaseScore(1)
		if hasPowerUp:
			var newPowerUp = curentPowerUp.instantiate()
			newPowerUp.position = self.position
			get_parent().add_child(newPowerUp)
		level.totalBricks -= 1
		queue_free()
		
	else:	
		if hitsRemaining == 2:
			$AnimatedSprite2D.frame = 1
		elif hitsRemaining == 1:
			$AnimatedSprite2D.frame = 2
		hitsRemaining -= 1

