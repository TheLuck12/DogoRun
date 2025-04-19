extends CharacterBody2D

@onready var animacion = $AnimationPlayer
var salte : int
@export var fuerzaSalto : int

func _ready() -> void:
	Animaciones()

func _physics_process(delta: float) -> void:
	if Global.enJuego == true:
		Gravedad(delta)
		Movimiento()
		Mover()
		move_and_slide()
	else:
		$AnimationPlayer.stop()

func Gravedad(Masa):
	if not is_on_floor():
		velocity += get_gravity() * Masa

func Movimiento():
	#
	Saltar()
	Caida()
func Saltar():
	if Input.is_action_just_pressed("Saltar") and is_on_floor() and salte == 0:
		velocity.y += -fuerzaSalto
		salte = 1
		

func Mover():
	velocity.x = 500

func Caida():
	if Input.is_action_just_pressed("Caer") and not is_on_floor():
		velocity.y = 700
		salte = 2
	if is_on_floor() and salte != 0:
		salte = 0
		Animaciones()
	elif salte != 2 and not is_on_floor():
		salte = 1
		Animaciones()
	

func Animaciones():
	if salte == 0:
		animacion.play("Correr")
	elif salte == 1 :
		animacion.play("Saltar")
		salte = 2
