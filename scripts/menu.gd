extends Control

@onready var play_btn = $PlayBtn
@onready var quit_btn = $QuitBtn


func _ready():
	Score.score=0


func _on_play_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_quit_btn_pressed():
	get_tree().quit()
