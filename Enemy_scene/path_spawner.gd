extends Node2D

@export var path: PackedScene = preload("res://Enemy_scene/Stage_1.tscn")


func _on_timer_timeout():
	var tempPath = path.instantiate()
	add_child(tempPath)
