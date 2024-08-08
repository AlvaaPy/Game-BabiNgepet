extends CharacterBody2D

const SPEED = 150.0
const JUMP_VELOCITY = -400.0

var coins = 0

# Tidak ada gravitasi.
var gravity = 0.0

func _physics_process(_delta):
	# Tidak ada gravitasi.
	velocity.y = 0

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = 0

	# Gerakan ke atas dengan tombol panah atas
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED

	# Gerakan ke bawah dengan tombol panah bawah
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED

	move_and_slide()

	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play("pig right")
	elif Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.play("pig left")

	if Input.is_action_just_released("ui_right"):
		$AnimatedSprite2D.play("idle_right_pig")

	if Input.is_action_just_released("ui_left"):
		$AnimatedSprite2D.play("idle_left_pig")

	if Input.is_action_just_pressed("ui_up"):
		$AnimatedSprite2D.play("top_pig")
	elif Input.is_action_just_pressed("ui_down"):
		$AnimatedSprite2D.play("bottom_pig")


func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://ladning.tscn")

func GetCoin():
	coins += 1
