extends Node2D
@export var direccion : String

func _process(_delta: float) -> void:
	if Global.pausa == false:
		ComenzarNivel()
	
func ComenzarNivel():
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
	if Global.vivo == false: 
		$MoverAb/CollisionShape2D.position.x = -1000
		$MoverAr/CollisionShape2D.position.x = -1000
		direccion = ""
