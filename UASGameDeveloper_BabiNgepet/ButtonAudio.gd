extends Button

func _ready():
	connect("pressed", self, "_on_audio_button_pressed")

func _on_audio_button_pressed():
	if AudioServer.mute:
		AudioServer.mute = false
	else:
		AudioServer.mute = true
