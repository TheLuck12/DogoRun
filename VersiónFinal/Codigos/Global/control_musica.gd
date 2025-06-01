extends Node

func EmpezarMusica():
	if !$MMenu.playing and Global.Nivel == 0:
		$MMenu.play()
	if !$MInGame.playing and Global.Nivel >= 1 and Global.Nivel <= 10:
		$MInGame.play()
func PararMusica():
	$MMenu.stop()
	$MInGame.stop()
		
