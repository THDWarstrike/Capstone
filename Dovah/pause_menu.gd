extends Control

@onready var PauseMenu  = $PauseMenu

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	if Input.is_action_pressed("ui cancel"):
		PauseMenu = true
		get_tree().paused = true
		

func _on_Resume_pressed():
	PauseMenu = false
	get_tree().paused = false


func _on_Exit_pressed():
	get_tree().change_scene_to_file("res://exit_bullshit.tscn")


func on_Options_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
