extends Control


func _ready():
	pass

func _on_Back_send_scene(scene):
	get_tree().change_scene(scene)
