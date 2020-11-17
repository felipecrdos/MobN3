extends Button

export (String, FILE) var scene
signal send_scene(scene)

func _ready():
	pass

func on_button_pressed():
	Sound.play_effect('click')
	emit_signal("send_scene", scene)
