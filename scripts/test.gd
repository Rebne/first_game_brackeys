extends Label

#@onready var camera = %Camera2D
#@onready var label = $"."
#
## X and Y for camera position
#var x_cam: float
#var y_cam: float
#
## X and Y for label position
#const X_OFFSET = 10
#const Y_OFFSET = 10
#
#func _ready():
	#label.position = Vector2(0 - X_OFFSET, 0 - Y_OFFSET)
	#print(label.position)
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#var camera_position = camera.global_position
	#x_cam = camera_position.x
	#y_cam = camera_position.y
	#print(x_cam)
	#
	#label.position = Vector2(x_cam - X_OFFSET, y_cam - Y_OFFSET)
	#
