extends Control

var _name
var _diameter
var _distance
var _discoverer

var _name_label
var _diameter_label
var _distance_label
var _discoverer_label

var alert_color
var default_color
func _ready():
	_name 		= $VBMain/MTop/VBTop/HBName/TextEdit
	_diameter 	= $VBMain/MTop/VBTop/HBDiameter/TextEdit
	_distance 	= $VBMain/MTop/VBTop/HBDistance/TextEdit
	_discoverer = $VBMain/MTop/VBTop/HBDiscoverer/TextEdit
	
	_name_label = $VBMain/MTop/VBTop/HBName/Label
	_diameter_label = $VBMain/MTop/VBTop/HBDiameter/Label
	_distance_label = $VBMain/MTop/VBTop/HBDistance/Label
	_discoverer_label = $VBMain/MTop/VBTop/HBDiscoverer/Label
	
	alert_color = Color("#fe7272")
	default_color = Color("#ffffff")
	
func clear_fields():
	_name.text = ''
	_diameter.text = ''
	_distance.text = ''
	_discoverer.text = ''

func empty_fields():
	var is_empty = false
	if _name.text == '':
		if not "type name" in _name_label.text:
			_name_label.text = "type name"
		set_label_color(_name_label, alert_color)
		is_empty = true
	if _diameter.text == '':
		if not "type diameter" in _diameter_label.text:
			_diameter_label.text = "type diameter"
		set_label_color(_diameter_label, alert_color)
		is_empty = true
	if _distance.text == '':
		if not "type distance" in _distance_label.text:
			_distance_label.text = "type distance"
		set_label_color(_distance_label, alert_color)
		is_empty = true
	if _discoverer.text == '':
		if not "type discoverer" in _discoverer_label.text:
			_discoverer_label.text = "type discoverer"
		set_label_color(_discoverer_label, alert_color)
		is_empty = true
		
	return is_empty
	
func _on_Back_send_scene(scene):
	get_tree().change_scene(scene)

func _on_Save_send_scene(scene):
	if !empty_fields():
		var asteroid = {
			"name": _name.text,
			"diamter": _diameter.text,
			"distance": _distance.text,
			"discoverer": _discoverer.text
		}
		Global.add_asteroid(asteroid)
		clear_fields()

func set_label_color(label, color):
	label.set("custom_colors/font_color", color)


func _on_Name_text_changed():
	_name_label.text = "name"
	set_label_color(_name_label, default_color) 


func _on_Diameter_text_changed():
	_diameter_label.text = "diameter"
	set_label_color(_diameter_label, default_color)


func _on_Distance_text_changed():
	_distance_label.text = "distance"
	set_label_color(_distance_label, default_color)


func _on_Discoverer_text_changed():
	_discoverer_label.text = "discoverer"
	set_label_color(_discoverer_label, default_color)
