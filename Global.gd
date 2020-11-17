extends Node

# Variables
var data_path = "res://data/data.json"

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
		return
	file.open(data_path, File.READ)
	var data = parse_json(file.get_as_text())
	file.close()
	return data
