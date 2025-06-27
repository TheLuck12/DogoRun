extends Control

func _ready() -> void:
	$Plataforma.text = "PC"
	OcultarMostrar()
	Global.Nivel = 0
	$Botones/Jugador/Animacion.play("Correr")
	$AnimationPlayer.play("MoverPiso")
	ControlMusica.EmpezarMusica()


func SalirDelJuego() -> void:
	get_tree().quit()


func IrMenuNiveles() -> void:
	$PantallaCarga.ActPantalla()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"

func IrMenuAjustes() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_creditos.tscn"
	$PantallaCarga.ActPantalla()

func OcultarMostrar():
	if Global.barraP == 100:
		$Botones.visible = false
	elif Global.barraP == 0:
		$Botones.visible = true


func ControlMobil() -> void:
	if Global.control == 0:
		Global.control = 1
		$Plataforma.text = "CELULAR"
	elif Global.control == 1:
		Global.control = 0
		$Plataforma.text = "PC"
