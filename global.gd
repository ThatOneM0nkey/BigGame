extends Node

var enemy = false
var unit = false
var speed = 10

enum Alignment {Enemy, Unit}

var alignment = Alignment

func _process(delta: float) -> void:
	if str(Alignment) == str(Alignment.Enemy):
		enemy = true
	else:
		unit = true
