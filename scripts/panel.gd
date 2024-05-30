extends Panel
@onready var game_manager = %GameManager

var time :float = 0	
var game_ended: bool = false


func _process(delta):
	if !game_ended:
		time += delta
		var msec = fmod(time, 1) * 100
		var seconds = fmod(time, 60)
		$Seconds.text =  "%02d" % seconds + ":"
		$Msec.text =  "%02d" % msec
		
func halt_stopwatch():
	game_ended = true


func _on_game_manager_game_ended():
	halt_stopwatch()
