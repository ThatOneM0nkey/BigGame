extends CharacterBody2D


@onready var healthbar = $Healthbar
@export var speed = 500


func _process(delta): #Ends Character Progress after it reaches the end of the path
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()
	

func _ready():
	health = 6
	on_dead = die
	healthbar.init_health(health)
	

func _set_heealth(value):
	super._set_health(value)
	if health <= 0 && is_alive:
		_die()
		
	healthbar.health = health
