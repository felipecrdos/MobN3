extends Control

func _on_Register_send_scene(scene):
	get_tree().change_scene(scene)

func _on_List_send_scene(scene):
	get_tree().change_scene(scene)

func _on_Quit_send_scene(scene):
	get_tree().quit()
