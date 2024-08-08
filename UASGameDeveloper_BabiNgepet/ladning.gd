extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_credits_button_up():
	get_tree().change_scene_to_file("res://credits.tscn")


func _on_new_game_button_up():
	get_tree().change_scene_to_file("res://NewGame.tscn")

func _on_exite_pressed():
	get_tree().quit()


func _on_continuous_game_button_up():
	get_tree().change_scene_to_file("res://map_1.tscn")





func _on_pengaturan_button_up():
	get_tree().change_scene_to_file("res://MAP.tscn")
