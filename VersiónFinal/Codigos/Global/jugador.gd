extends CharacterBody2D
const FSALTO = -600
const FCAIDA = 350
var salto = 0
func _ready() -> void:
	EmpezarAnimación()


func _physics_process(delta: float) -> void:
	Saltar()
	Mover()
	Gravedad(delta)
	move_and_slide()
	
func Mover():
		velocity.x = 500

func Saltar():
	if Input.is_action_just_pressed("Saltar") && salto == 0:
		velocity.y = FSALTO
		salto = 1
	elif !is_on_floor() && salto == 1:
		salto = 2 
	elif Input.is_action_just_pressed("Caer"):
		velocity.y = FCAIDA
		salto = 2 
	elif is_on_floor() == true && salto == 2:
		salto = 0


func Gravedad(Masa):
	if !is_on_floor():
		velocity += get_gravity() * Masa

func EmpezarAnimación():
	$Animacion.play("Correr")
