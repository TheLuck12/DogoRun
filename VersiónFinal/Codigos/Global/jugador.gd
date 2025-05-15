extends CharacterBody2D
const FSALTO = -600
const FCAIDA = 350
var salto = 0
func _ready() -> void:
	EmpezaraJugar()


func _physics_process(delta: float) -> void:
	if Global.vivo:
		Saltar()
		Mover()
		Gravedad(delta)
		move_and_slide()
	
func Mover():
		velocity.x = 500

func Saltar():
	if salto == 1:
		$Animacion.play("Saltar")
	if Input.is_action_just_pressed("Saltar") && salto == 0:
		velocity.y = FSALTO
		salto = 1
	elif !is_on_floor() && salto == 1:
		salto = 2 
	elif !is_on_floor() && Input.is_action_just_pressed("Caer"):
		velocity.y = FCAIDA
		salto = 2 
	elif is_on_floor() == true && salto == 2:
		$Animacion.play("Correr")
		salto = 0


func Gravedad(Masa):
	if !is_on_floor():
		velocity += get_gravity() * Masa

func EmpezaraJugar():
	if Global.barraP == 0:
		$Animacion.play("Correr")
		Global.vivo = true
