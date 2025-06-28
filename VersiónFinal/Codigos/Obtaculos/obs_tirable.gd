extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CambiarSkin()
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

func CambiarSkin():
	var skin = 0
	skin = Global.Randomizar(1,2) 
	print(skin)
	if skin == 1:
		$AnimatedSprite2D.play("Botella")
	elif skin == 2:
		$AnimatedSprite2D.play("Uvita")
