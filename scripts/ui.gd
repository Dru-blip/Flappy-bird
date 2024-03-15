extends Control

@onready var score_text = $ScoreText

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score_text.set_text(str(Score.score))


func _on_menu_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
