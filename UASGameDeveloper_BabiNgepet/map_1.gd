extends Node2D

@onready var pause_menu = $karakter/Camera2D/PauseMenu
var paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused


func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://ladning.tscn")
