extends Node2D
@onready var timer = $Timer

const OBSTACLE = preload("res://scenes/obstacle.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timer.start()


func _on_timer_timeout():
	var new_obstacle=OBSTACLE.instantiate()
	
	new_obstacle.position=Vector2(position.x,randf_range(-90,120))
	get_parent().add_child(new_obstacle)
