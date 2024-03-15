extends RigidBody2D


@onready var wing_audio = $Wing
@onready var hit = $Hit
@onready var timer = $Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(event):
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("fly"):
		set_linear_velocity(Vector2.UP*500)
		wing_audio.play()


func _on_body_entered(body):
	if body.name=="PipeBelow" or body.name=="PipeAbove":
		timer.start()
		hit.play()
		


func _on_timer_timeout():
	get_node("/root/Level/Control/Panel").visible=true
	queue_free()
