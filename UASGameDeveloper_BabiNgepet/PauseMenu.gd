extends Control

var is_paused : bool = false

func _ready():
	# Panggil method ini pada awal scene
	set_process_input(true)

func unhandled_input(event):
	if event.is_action_pressed("pause"):
		is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_resume_btn_pressed():
	set_is_paused(false)

func _on_quit_btn_pressed():
	get_tree().quit()
