class_name BrickNormal extends Brick

#normal brick does not set up a power up in ready
func _ready():
	pass


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
		hitsRemaining -= 1	
		$AnimatedSprite2D.frame = 1
