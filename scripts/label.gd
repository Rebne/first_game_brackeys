extends Label

@onready var timer = $Timer
@onready var label = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()

func _on_timer_timeout():
	label.set_visible(false)
