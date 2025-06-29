extends Control

func _ready() -> void:
	ControlMusica.PonerAutoPlay()
	DetectarDispositivo()
	OcultarMostrar()
	Global.Nivel = 0
	$Jugador/Animacion.play("Correr")
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


func DetectarDispositivo():
	if Global.control == 1:
		$PerroHabla.text = "¡Salta Y Cae Con las Flechas en Pantalla!"
	elif Global.control == 0:
		$PerroHabla.text = "¡Salta Con (W) y Cae Con (S)!"
