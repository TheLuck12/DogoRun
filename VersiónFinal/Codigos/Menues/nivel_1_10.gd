extends Control

func _ready() -> void:
	OcultarMostrar()

func VolverMapa() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
	$PantallaCarga.ActPantalla()

func IrANivel():
	$PantallaCarga.ActPantalla()
 

func InstanciarN1() -> void:
	Global.Nivel = 1 #ColocarElNivelDiseñado
	
func OcultarMostrar():
	if Global.barraP == 100:
		$Interfaz.visible = false
	elif Global.barraP == 0:
		$Interfaz.visible = true
