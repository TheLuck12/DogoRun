extends Node2D
@export var direccion : String

func _process(_delta: float) -> void:
	Mover()
	
func Mover():
	if direccion == "Arriba":
		$Enemigo.position.y -= 25
	elif direccion == "Abajo":
		$Enemigo.position.y += 25
	else:
		return

func MoverArriba(area: Area2D) -> void:
	if area.name == "Enemigo":
		direccion = "Arriba"


func MoverAbajo(area: Area2D) -> void:
	if area.name == "Enemigo":
		direccion = "Abajo"

func Fin():
	direccion = ""
