extends Area2D

@export var Movimiento = 0



func _process(_delta: float) -> void:
	if Global.enJuego == true:
		Mover()

func Mover():
	if Movimiento == 0:
		position.y += 10
	else:
		position.y -= 10



func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("PJ"):
		Global.enJuego = false
		
