extends Control

var oneStar 
var twoStar
var threeStar
var threeStarTime = 120
var twoStarTime = 180
var oneStarTime = 240
# Called when the node enters the scene tree for the first time.
func _ready():
	oneStar = $CanvasLayer/HBoxContainer/VBoxContainer/oneStar
	twoStar = $CanvasLayer/HBoxContainer/VBoxContainer/twoStar
	threeStar = $CanvasLayer/HBoxContainer/VBoxContainer/threeStar


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	oneStar.visible = false
	twoStar.visible = false
	threeStar.visible = false
	if Main.lives <= 0:
		oneStar.visible = true
		pass
	else:
		if Main.elapsedTime <= threeStarTime:
			oneStar.visible = true
			twoStar.visible = true
			threeStar.visible = true
		elif Main.elapsedTime <= twoStarTime:
			oneStar.visible = true
			twoStar.visible = true
		else:
			oneStar.visible = true
	
	$CanvasLayer/HBoxContainer/VBoxContainer/Score.text = "Score: " + str(Main.score)
	$CanvasLayer/HBoxContainer/VBoxContainer/Time.text = "Time: " + str(round(Main.elapsedTime))
	
	
	


func resetScore():
	Main.score = 0
	Main.lives = 3
	Main.elapsedTime = 0

func _on_next_pressed():
	resetScore()
	if Main.currentLevel == 1:
		Main.currentLevel = 2
		get_tree().change_scene_to_file("res://Level2.tscn")
	elif Main.currentLevel == 2:
		Main.currentLevel = 3
		get_tree().change_scene_to_file("res://Level3.tscn")
	else :
		get_tree().change_scene_to_file("res://menu.tscn")




func _on_try_again_pressed():
	resetScore()
	if Main.currentLevel == 1:
		get_tree().change_scene_to_file("res://Level1.tscn")
	elif Main.currentLevel == 2:
		get_tree().change_scene_to_file("res://Level2.tscn")
	else:
		get_tree().change_scene_to_file("res://Level3.tscn")


func _on_menu_pressed():
	resetScore()
	get_tree().change_scene_to_file("res://menu.tscn")


