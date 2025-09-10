extends PathFollow2D

@export var speed: float = 150.0  # pixels/sec
var path_length: float

func _ready():
	# Reset progress to 0 at spawn
	progress = 0
	# Get the total path length from the parent Path2D
	path_length = get_parent().curve.get_baked_length()

func _process(delta: float) -> void:
	progress += speed * delta

	# If reached end of path → remove character
	if progress >= path_length:
		queue_free()
