extends Node2D


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Enemigo"):
		area.Movimiento = 0


func _on_area_2d_2_area_entered(area: Area2D) -> void:
	if area.is_in_group("Enemigo"):
		area.Movimiento = 1
 
