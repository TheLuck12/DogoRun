extends Node2D



func ComenzarNivel():
	if $AnimatedSprite2D.animation == "Colectivo" and Global.vivo == true:
		$AnimationPlayer.play("RuedasGirando")
	elif Global.vivo == false or Global.pause == true:
		$AnimationPlayer.stop()


func DetectarJugador(body: Node2D) -> void:
	if body.name == "Jugador":
		$TocarBocina.play()
