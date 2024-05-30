extends Node


var high_score: float
var save_path: String = "user://high_scores.txt"

var score: int = 0
@onready var stopwatch = $"../Player/Stopwatch"

signal gameEnded

func _ready():
	get_window().title = "PRINCESS DRAGON SLAYER"
	high_score = load_high_score()

func _process(_delta):
	if score == 7:
		gameEnded.emit()
		score += 1

func add_point():
	score += 1

func save_high_score(high_score_value: float):
	var file = FileAccess.open(save_path,FileAccess.WRITE)
	file.store_float(high_score_value)
	file = null

func load_high_score():
	var file = FileAccess.open(save_path, FileAccess.READ)
	if !FileAccess.file_exists(save_path):
		# 404 high score not found
		return 1000.41
	return file.get_float()

func _on_game_ended():
	if stopwatch.time < high_score:
		high_score = stopwatch.time
		save_high_score(high_score)
