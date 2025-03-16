extends CharacterBody2D


@onready var animacion = $AnimationPlayer
var salte : int
@export var fuerzaSalto : int
func _ready() -> void:
	Animaciones()

func _physics_process(delta: float) -> void:
	if Global.enJuego == true:
		Gravedad(delta)
		Saltar()
		Mover()
		move_and_slide()
	else:
		$AnimationPlayer.stop()

func Gravedad(Masa):
	if not is_on_floor():
		velocity += get_gravity() * Masa
		Caida()

func Saltar():
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() and salte == 0:
		velocity.y += -fuerzaSalto
		salte += 1
		Animaciones()
	else:
		Caida()
	MaxAltura()
	
func Mover():
	velocity.x = 500
func Caida():
	if Input.is_action_just_released("ui_accept") and not is_on_floor() and salte == 1:
		velocity.y = 400
		salte += 1 
	elif is_on_floor() and salte != 0:
		salte = 0
		Animaciones()
	elif not is_on_floor():
		salte = 1
		Animaciones()
func MaxAltura():
	if velocity.y <= -800:
		velocity.y = -800

func Animaciones():
	if salte == 0:
		animacion.play("Correr")
	elif salte != 0 and not is_on_floor():
		animacion.play("Saltar")
