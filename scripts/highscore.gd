extends Label

@onready var game_manager = %GameManager
@onready var highscore = $"."

func _ready():
	var high_score: float = game_manager.high_score
	var msec = fmod(high_score, 1) * 100
	var seconds = fmod(high_score, 60)
	
	var result =  "%02d" % seconds + ":"
	result +=  "%02d" % msec

	highscore.text = "BEST TIME: " + result
