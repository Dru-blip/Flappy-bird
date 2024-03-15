extends Panel


@onready var high_score = $HighScore


func _process(delta):
	high_score.text=str(Score.score)

