class_name Ball extends RigidBody2D

@export var magnitude = 1600
@export var onFire = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#
func _integrate_forces(state):
	var direction = linear_velocity.normalized()
	linear_velocity = direction * magnitude
	
func _on_body_entered(body):
	
	if body is Brick:
		$AudioStreamPlayer2D.play()
		body._on_hit(self)
		
	
	
func setOnFire():
	$AnimatedSprite2D.play("OnFire")
	onFire = true

