extends Node2D

@onready var pipe_above = $PipeAbove
@onready var pipe_below = $PipeBelow
@onready var audio = $Audio

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position-=Vector2.LEFT*-300.0*delta



func _on_score_trigger_body_entered(body):
	var player=get_parent().get_node("/root/Level/Player")
	if player and body==player:
		audio.play()
		Score.increment()
		
		
