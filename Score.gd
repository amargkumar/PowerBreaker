extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

func displayLives():
	get_node("../AnimatedSprite2D").visible = false
	get_node("../AnimatedSprite2D2").visible = false
	get_node("../AnimatedSprite2D3").visible = false
	get_node("../AnimatedSprite2D4").visible = false
	get_node("../AnimatedSprite2D5").visible = false
	
	match Main.lives:
		1:
			get_node("../AnimatedSprite2D").visible = true
		2:
			get_node("../AnimatedSprite2D").visible = true
			get_node("../AnimatedSprite2D2").visible = true
		3:
			get_node("../AnimatedSprite2D").visible = true
			get_node("../AnimatedSprite2D2").visible = true
			get_node("../AnimatedSprite2D3").visible = true
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	displayLives()
	text = "Score: " + str(Main.score)
