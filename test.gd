extends Node2D
 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.enemy = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	position.x -= delta * Global.speed
