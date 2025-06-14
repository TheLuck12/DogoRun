extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	linear_velocity.y = -650
	ComenzarNivel()

func DestruirObj():
	queue_free()


func DetectoPiso(area: Area2D) -> void:
	if area.name == "DetectoPiso":
		DestruirObj()

func ComenzarNivel():
	linear_velocity.x = -400
	gravity_scale = 1
func Fin():
	linear_velocity.y = 0
	linear_velocity.x = 0
	gravity_scale = 0
