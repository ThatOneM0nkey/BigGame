extends CharacterBody2D
var health: int = 6
var is_alive: bool = true

func take_damage(amount: int):
	if not is_alive:
		return
	
	health -= amount
	if health <= 0:
		_die()
	else:
		_update_healthbar()

func _die():
	is_alive = false
	queue_free() # remove the enemy — or play death animation here

func _update_healthbar():
	if has_node("Healthbar"):
		$Healthbar.health = health
