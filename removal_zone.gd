extends Area2D

@onready var ballScene = load("res://ball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("Entered")
	if body is Ball:
		body.free()
		var listOfNodes = get_parent().get_children()
		var ballPresent = false
		for child in listOfNodes:
			if child is Ball:
				print(child.name)
				ballPresent = true
				break
		if ballPresent == false:
			Main.lives -= 1
		if Main.lives > 0 and ballPresent == false:
			var newBall = ballScene.instantiate()
			get_parent().add_child(newBall)
			await get_tree().create_timer(4.0).timeout
			print(newBall)
			if newBall != null:
				newBall.linear_velocity = Vector2(200, 1000)
				newBall.magnitude = 1600
		elif Main.lives <= 0:
			
			get_tree().change_scene_to_file("res://end_screen.tscn")
		


