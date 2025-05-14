extends Control

func _ready() -> void:
	OcultarMostrar()

func VolverMapa() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
	$PantallaCarga.ActPantalla()

func IrANivel():
	$PantallaCarga.ActPantalla()
	Global.menu = "res://VersiónFinal/Escenas/Global/nivel_global.tscn"

func OcultarMostrar():
	if Global.barraP == 100:
		$Interfaz.visible = false
	elif Global.barraP == 0:
		$Interfaz.visible = true

func PrepararNivel(Boton):
	Global.Nivel = Boton
	IrANivel()

func InstanciarN1() -> void:
	PrepararNivel(1)

func InstanciarN2() -> void:
	PrepararNivel(2)

func InstanciarN3() -> void:
	PrepararNivel(3)

func InstanciarN4() -> void:
	PrepararNivel(4)

func InstanciarN5() -> void:
	PrepararNivel(5)
