extends Control

var menu : String
@onready var Jugador = $Icon

func _ready() -> void:
	IrProvincia()
	
func ProvSig() -> void: 
	if Global.provincia == 6:
		Global.provincia = 0
	else:
		Global.provincia += 1
	IrProvincia()

func ProvAnt() -> void:
	if Global.provincia == 0:
		Global.provincia = 6
	else:
		Global.provincia -= 1
	IrProvincia()
 
func IrProvincia():
	if Global.provincia == 0:
		Jugador.global_position = $BuenosAires.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_1_10.tscn"
		$MoverDeProvincia/Provincia.text = str("BUENOS AIRES")
	elif Global.provincia == 1:
		Jugador.global_position = $Misiones.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_11_20.tscn"
		$MoverDeProvincia/Provincia.text = str("MISIONES")
	elif Global.provincia == 2:
		Jugador.global_position = $Jujuy.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_21_30.tscn"
		$MoverDeProvincia/Provincia.text = str("JUJUY")
	elif Global.provincia == 3:
		Jugador.global_position = $Mendoza.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_31_40.tscn"
		$MoverDeProvincia/Provincia.text = str("MENDOZA")
	elif Global.provincia == 4:
		Jugador.global_position = $Chubut.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_41_50.tscn"
		$MoverDeProvincia/Provincia.text = str("CHUBUT")
	elif Global.provincia == 5:
		Jugador.global_position = $TierraDelFuego.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_51_60.tscn"
		$MoverDeProvincia/Provincia.text = str("TIERRA DEL FUEGO")
	elif Global.provincia == 6:
		Jugador.global_position = $Cordoba.global_position
		menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_61_70.tscn"
		$MoverDeProvincia/Provincia.text = str("CORDOBA")
	else:
		return

func IrANiveles() -> void:
	get_tree().change_scene_to_file(menu)

func VolMenuPrin() -> void:
	get_tree().change_scene_to_file("res://VersiónFinal/Escenas/Menues/menu_principal.tscn")
