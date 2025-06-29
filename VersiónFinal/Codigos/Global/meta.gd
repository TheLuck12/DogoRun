extends Node2D

func _ready() -> void: 
	$Sprite2D/AnimationPlayer.play("Mover")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Jugador":
		if Global.Nivel > Global.NivelesCompletados :
			Global.NivelesCompletados += 1
		Global.Nivel  = 0
		if Global.provincia == 0:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_1_10.tscn"
		elif Global.provincia == 1:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_11_20.tscn"
		elif Global.provincia == 2:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_21_30.tscn"
		elif Global.provincia == 3:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_31_40.tscn"
		elif Global.provincia == 4:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_41_50.tscn"
		elif Global.provincia == 5:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_51_60.tscn"
		elif Global.provincia == 6:
			Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_61_70.tscn"
		get_tree().call_group("Interfaz","ActPantalla")
		get_tree().call_group("PJ","NivelCompletado")
		$Victoria.play()
