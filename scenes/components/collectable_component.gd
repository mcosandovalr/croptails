class_name CollectableComponent
extends Area2D

@export var collectable_name: String



func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		print("Collected " + collectable_name)
		# we use get parent, since collectable is going to be added to another scene
		get_parent().queue_free()
