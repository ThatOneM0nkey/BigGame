extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_toplane_area_entered(area: Area2D) -> void:
	print("hi")


func _on_secondtoplane_area_entered(area: Area2D) -> void:
	print("hello")


func _on_midlane_area_entered(area: Area2D) -> void:
	print("g'day")


func _on_secondbotlane_area_entered(area: Area2D) -> void:
	print("bello")


func _on_botlane_area_entered(area: Area2D) -> void:
	print("die")
