extends Control

var isPaused = false

func _ready():
	set_process_input(true)
	if isPaused:
		self.text = "Resume"
	else:
		self.text = "Pause"

func _pressed():
	if isPaused:
		unpause_game()
	else:
		pause_game()

func pause_game():
	if not isPaused:
		get_tree().paused = true
		isPaused = true
		self.text = "Resume"

func unpause_game():
	if isPaused:
		get_tree().paused = false
		isPaused = false
		self.text = "Pause"
