extends CanvasLayer

func _ready() -> void: 
	$Pantalla.value = Global.barraP 
	if Global.barraP == 100:
		ActPantalla()

func ActPantalla():
	visible = true
	if Global.barraP == 0:
		$Animacion.play("Entrar")
	elif Global.barraP == 100:
		$Animacion.play("Salir")

func FinAnimacion():
	Global.barraP = $Pantalla.value
	if Global.barraP == 0:
		visible = false
		get_tree().call_group("Menu","OcultarMostrar")
		get_tree().call_group("PJ","EmpezaraJugar")
	elif Global.barraP == 100:
		get_tree().change_scene_to_file(Global.menu)
