extends Node2D

@export var ObjTirable : PackedScene


func InstanciarObj():
	var Objeto = ObjTirable.instantiate()
	add_child(Objeto)
	Objeto.global_position = $PoInObjeto.global_position


func _on_ins_time_timeout() -> void:
	InstanciarObj()

func Fin():
	$PoInObjeto/InsTime.autostart = false
	$PoInObjeto/InsTime.stop()
