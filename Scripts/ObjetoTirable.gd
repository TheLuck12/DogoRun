extends RigidBody2D


func _ready() -> void:
	Impulso()
	
func Impulso():
	position.x = -57
	position.y = -48
	linear_velocity.x = -400
	linear_velocity.y = -800


func _physics_process(_delta: float) -> void:
	if Global.enJuego == false:
		freeze = true

func _on_eliminar_timeout() -> void:
	queue_free()


func _on_detectar_jugador_body_entered(body: Node2D) -> void:
	if body.name == "Jugador":
		Global.enJuego = false

func Eliminar():
	if Global.enJuego == true:
		queue_free()
