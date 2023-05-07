extends Node2D

# Define variables
var video_player
var video_path = "res://video/sample.mp4"

func _ready():
	# Initialize video player
	video_player = VideoPlayer.new()
	video_player.set_stream(load(video_path))
	video_player.set_loop(false)
	video_player.set_volume(1)
	add_child(video_player)
	
	# Play video when page is loaded
	video_player.play()

func _input(event):
	# Check for input event to stop the video
	if event.is_action_pressed("ui_cancel"):
		video_player.stop()
		queue_free()
		
func _on_back_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
