extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_level_1_pressed():
	Main.currentLevel = 1
	get_tree().change_scene_to_file("res://Level1.tscn")


func _on_level_2_pressed():
	Main.currentLevel = 2
	get_tree().change_scene_to_file("res://Level2.tscn")

func _on_level_3_pressed():
	Main.currentLevel = 3
	get_tree().change_scene_to_file("res://Level3.tscn")


func _on_instructions_pressed():
	get_tree().change_scene_to_file("res://instructions.tscn")


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
