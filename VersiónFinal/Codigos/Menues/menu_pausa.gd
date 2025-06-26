extends Control

func PausaOGameOver():
	if Global.pausa == true:
		$Menues.play("Pausa")
	else:
		$Menues.play("GameOver")
func SacarMenuP():
	Global.pausa = false
	get_tree().call_group("Menu", "MostrarMenuP")
	get_tree().call_group( "Enemigo","ComenzarNivel")
	ControlMusica.PausarMusicaInGame()
func IrMenuPr():
	LlamarPantallaConfirmacion()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_principal.tscn"

func IrMenuNi():
	LlamarPantallaConfirmacion()
	if Global.provincia == 0:
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_1_10.tscn"

func IrMapa():
	LlamarPantallaConfirmacion()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
	
func Reiniciar():
	LlamarPantallaConfirmacion()
	Global.menu = "res://VersiónFinal/Escenas/Global/nivel_global.tscn"
func LlamarPantallaConfirmacion():
	get_tree().call_group("Interfaz", "Mostrar")
