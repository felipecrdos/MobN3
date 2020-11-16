extends Control

var _values

func _ready():
	_values = $VBMain/MTop/VBTop/Panel/VBRegister/Scroll/Label
	list_values()
	
func list_values():
	var data = Global.load_data()
	for value in data['asteroids']:
		_values.text += "Name: " + str(value['name']) + "\n"
		_values.text += "Diameter: " + str(value['diameter']) + "\n"
		_values.text += "Distance: " + str(value['distance']) + "\n"
		_values.text += "Discoverer: " + str(value['discoverer']) + "\n"
		_values.text += "----------------------------------------------\n"
	
func _on_Register_send_scene(scene):
	get_tree().change_scene(scene)

func _on_Back_send_scene(scene):
	get_tree().change_scene(scene)
