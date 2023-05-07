extends Node2D

var background_music = $BackgroundMusic

func _ready():
	$Button.connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	if background_music.playing:
		background_music.stop()
	else:
		background_music.play()
		
func _on_back_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
