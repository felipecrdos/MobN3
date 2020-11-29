extends Node

# Variables
var data_path = "user://data.json"

# default values
var default_values : Dictionary = {
	"asteroids":[
		{"diameter":934.5,"discoverer":"Giuseppe Piazzi","distance":"256 AU","name":"Ceres"},
		{"diameter":525.4,"discoverer":"Heinrich Wilhelm Matthias Olbers","distance":"2.362 AU","name":"Vesta"},
		{"diameter":512,"discoverer":"Heinrich Wilhelm Matthias Olbers","distance":"2.773 AU","name":"Pallas"},
		{"diameter":534,"discoverer":"Annibale de Gasparis","distance":"3.139 AU","name":"Hygiea"}
		]
	}

# Save data
func save_data(data):
	var file = File.new()
	file.open(data_path, File.WRITE)
	file.store_line(to_json(data))
	file.close()

# Add asteroid
func add_asteroid(data):
	var datas = load_data()
	datas['asteroids'].append(data)
	save_data(datas)
	
# Load data
func load_data():
	var file = File.new()
	if !file.file_exists(data_path):
		save_data(default_values)
	file.open(data_path, File.READ)
	var data = parse_json(file.get_as_text())
	file.close()
	return data


