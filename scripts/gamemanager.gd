extends Node


var high_score: float
var save_path: String = "user://high_scores.txt"

var score: int = 6
@onready var stopwatch = $"../Player/Stopwatch"

signal gameEnded

func _init():
	high_score = load_high_score()

func _process(_delta):
	if score == 7:
		gameEnded.emit()
		score += 1
		if stopwatch.time < high_score:
			high_score = stopwatch.time
			save_high_score(high_score)

func add_point():
	score += 1
	print(score)

func save_high_score(high_score_value: float):
	var file = FileAccess.open(save_path,FileAccess.WRITE)
	file.store_float(high_score_value)
	file = null

func load_high_score():
	var file = FileAccess.open(save_path, FileAccess.READ)
	return file.get_float()

