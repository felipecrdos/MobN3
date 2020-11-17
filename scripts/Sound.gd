extends Node2D

var music
var effect

func _ready():
	music = $Music
	effect = $Effect
	
func play_music(stream : String):
	if music.has_node(stream):
		music.get_node(stream).play()

func play_effect(stream : String):
	if effect.has_node(stream):
		effect.get_node(stream).play()
