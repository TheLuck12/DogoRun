extends Control

@onready var Jugador = $Icon

func _ready() -> void:
	OcMoAmigos()
	OcultarMostrar()
	AbrirProvincia()
	IrProvincia()
	$Icon/AnimationPlayer.play("Idle")
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
	AbrirProvincia()
	if Global.provincia == 0:
		Jugador.global_position = $Provincias/BuenosAires.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_1_10.tscn"
		$MoverDeProvincia/Provincia.text = str("BUENOS AIRES")
	elif Global.provincia == 1:
		Jugador.global_position = $Provincias/Misiones.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_11_20.tscn"
		$MoverDeProvincia/Provincia.text = str("MISIONES")
	elif Global.provincia == 2:
		Jugador.global_position = $Provincias/Jujuy.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_21_30.tscn"
		$MoverDeProvincia/Provincia.text = str("JUJUY")
	elif Global.provincia == 3:
		Jugador.global_position = $Provincias/Mendoza.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_31_40.tscn"
		$MoverDeProvincia/Provincia.text = str("MENDOZA")
	elif Global.provincia == 4:
		Jugador.global_position = $Provincias/Chubut.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_41_50.tscn"
		$MoverDeProvincia/Provincia.text = str("CHUBUT")
	elif Global.provincia == 5:
		Jugador.global_position = $Provincias/TierraDelFuego.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_51_60.tscn"
		$MoverDeProvincia/Provincia.text = str("TIERRA DEL FUEGO")
	elif Global.provincia == 6:
		Jugador.global_position = $Provincias/Cordoba.global_position
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_61_70.tscn"
		$MoverDeProvincia/Provincia.text = str("CORDOBA")
	else:
		return

func IrANiveles() -> void:
	$PantallaCarga.ActPantalla()

func VolMenuPrin() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_principal.tscn"
	$PantallaCarga.ActPantalla()
	
func OcultarMostrar():
	if Global.barraP == 100:
		$MoverDeProvincia.visible = false
	elif Global.barraP == 0:
		$MoverDeProvincia.visible = true

func AbrirProvincia():
	if Global.provincia == 0:
		$MoverDeProvincia/Viajar.visible = true
		$MoverDeProvincia/Proximamente.visible = false
	elif Global.NivelesCompletados >= 10 and Global.provincia == 1:
		$MoverDeProvincia/Viajar.visible = true
	elif Global.NivelesCompletados >= 20 and Global.provincia == 3:
		$MoverDeProvincia/Viajar.visible = true
	elif Global.NivelesCompletados >= 30 and Global.provincia == 2:
		$MoverDeProvincia/Viajar.visible = true
	elif Global.NivelesCompletados >= 40 and Global.provincia == 4:
		$MoverDeProvincia/Viajar.visible = true
	elif Global.NivelesCompletados >= 50 and Global.provincia == 5:
		$MoverDeProvincia/Viajar.visible = true
	elif Global.NivelesCompletados >= 60 and Global.provincia == 6:
		$MoverDeProvincia/Viajar.visible = true
	else:
		$MoverDeProvincia/Viajar.visible = false
		$MoverDeProvincia/Proximamente.visible = true

func OcMoAmigos():
	if Global.NivelesCompletados >=10:
		$Provincias/Animales/CarpinchoPRototipo.modulate = "ffffff"
		$Provincias/Animales/Label.queue_free()
