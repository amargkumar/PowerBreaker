class_name PowerUp extends Area2D

var velocity = Vector2(0,1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity
