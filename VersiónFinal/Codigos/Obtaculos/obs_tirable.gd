extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	linear_velocity.y = -600
	linear_velocity.x = -450

func DestruirObj():
	queue_free()


func DetectoPiso(area: Area2D) -> void:
	if area.name == "DetectoPiso":
		DestruirObj()
