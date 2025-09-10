extends Path2D

@export var enemy_scene: PackedScene
@export var spawn_interval: float = 2.0

func _ready():
	# Start timer that spawns enemies every 2 seconds
	var timer = Timer.new()
	timer.wait_time = spawn_interval
	timer.autostart = true
	timer.one_shot = false
	add_child(timer)
	timer.timeout.connect(spawn_enemy)

func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	add_child(enemy)
	enemy.progress = 0  # start at beginning of path
