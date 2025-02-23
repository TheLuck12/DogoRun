extends Area2D




func TerminarNivel(body: Node2D) -> void:
	if body.name == "Jugador":
		Global.enJuego = false
		Global.FinNivel = true
