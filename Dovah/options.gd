extends Node2D

func _on_video_pressed():
	get_tree().change_scene_to_file("res://video.tscn")


func _on_audio_pressed():
	get_tree().change_scene_to_file("res://audio.tscn")

func _on_controls_pressed():
	get_tree().change_scene_to_file("res://controls.tscn")

func _on_general_pressed():
	get_tree().change_scene_to_file("res://general.tscn")

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")
