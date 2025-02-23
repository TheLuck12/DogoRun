extends Area2D

var Movimiento = 0



func _process(_delta: float) -> void:
	if Global.enJuego == true:
		Mover()

func Mover():
	if Movimiento == 0:
		position.y += 10
	else:
		position.y -= 10


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Jugador":
		Global.enJuego = false
