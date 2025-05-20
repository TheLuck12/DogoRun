extends Control

func _ready() -> void:
	OcultarMostrar()
	$Jugador/Animacion.play("Correr")
	$AnimationPlayer.play("MoverPiso")

func SalirDelJuego() -> void:
	get_tree().quit()


func IrMenuNiveles() -> void:
	$PantallaCarga.ActPantalla()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"

func IrMenuAjustes() -> void:
	get_tree().change_scene_to_file("")

func OcultarMostrar():
	if Global.barraP == 100:
		$Botones.visible = false
	elif Global.barraP == 0:
		$Botones.visible = true
