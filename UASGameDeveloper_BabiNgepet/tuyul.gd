extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Karakter utama yang akan dikejar
var target_character = null

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump (opsional, karakter akan melompat saat jatuh)
	if is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Mengejar karakter utama
	if target_character:
		var direction_to_target = (target_character.global_position - global_position).normalized()
		velocity.x = direction_to_target.x * SPEED

	move_and_slide()

func _ready():
	# Memulai pergerakan karakter saat permainan dimulai.
	# Karakter akan mencoba mengikuti karakter utama yang telah ditentukan.
	target_character = get_node("")  # Gantilah dengan nama node karakter utama Anda.
