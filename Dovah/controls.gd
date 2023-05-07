extends Node2D

# Declare variables for UI elements
var button: Button
var label: Label

func _ready():
	# Get references to UI elements
	button = $Button
	label = $Label

	# Connect button signal to a function
	button.connect("pressed", self, "on_button_pressed")

# Function called when button is pressed
func on_button_pressed():
	# Update label text
	label.text = "Button pressed!"
	
func _on_back_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
