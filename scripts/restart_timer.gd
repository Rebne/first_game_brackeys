extends Timer
@onready var restart_timer = $"."
@onready var game_manager = %GameManager
@onready var audio_stream_player = $WinSound

func _ready():
	game_manager.connect("gameEnded", Callable(self, "_start_timer"))

func _start_timer():
	audio_stream_player.play()
	restart_timer.start()

func _on_timeout():
	get_tree().reload_current_scene()
