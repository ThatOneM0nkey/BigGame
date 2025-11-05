extends CharacterBody2D

@onready var healthbar = $Healthbar
@export var speed = 500
@onready var hitbox = $Hitbox
@export var contact_damage = 1
@export var damage_interval = 0.5


var health: int = 6
var is_alive: bool = true
var _last_damage_time := {}
func _ready():
	healthbar.init_health(health)
	hitbox.connect("body_entered", Callable(self, "_on_hitbox_body_entered"))

func _process(delta):
	# Move along the path
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	
	# Delete when reaching the end of the path
	if get_parent().get_progress_ratio() >= 1.0:
		queue_free()

func set_health(value: int):
	if not is_alive:
		return
	
	var prev_health = health
	health = clamp(value, 0, healthbar.max_value)
	healthbar.health = health
	
	if health <= 0:
		_die()

func take_damage(amount: int):
	set_health(health - amount)

func _die():
	is_alive = false
	queue_free()  # Or play animation, sound, etc.
	


func _on_hitbox_body_entered(body):
	# Deal damage to enemies only
	if body.has_method("take_damage") and body.is_in_group("enemies"):
		body.take_damage(contact_damage)
