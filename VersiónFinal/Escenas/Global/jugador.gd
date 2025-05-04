extends CharacterBody2D
const FSALTO = -650
const FCAIDA = 350
var salto = 0

func _physics_process(delta: float) -> void:
	Saltar()
	Mover()
	move_and_slide()

func Mover():
	#if Global.pausa == false && Global.vivo == true:
		velocity.x = 400

func Saltar():
	if Input.is_action_just_pressed("Saltar") && salto == 0:
		velocity.y = FSALTO
		salto = 1
	elif Input.is_action_just_pressed("Caer") && salto == 1:
		velocity.y = FCAIDA
		salto = 2 
	elif is_on_floor() == true && salto == 2:
		salto = 0
	else:
		return
