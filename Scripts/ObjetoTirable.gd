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

func Eliminar():
	if Global.enJuego == true:
		queue_free()

func _on_detectar_jugador_area_entered(area: Area2D) -> void:
	if area.is_in_group("PJ"):
		Global.enJuego = false
