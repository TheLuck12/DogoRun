extends Node2D

@export var ObjTirable : PackedScene
func _ready() -> void:
	ComenzarNivel()
func InstanciarObj():
	var Objeto = ObjTirable.instantiate()
	add_child(Objeto)
	Objeto.global_position = $PoInObjeto.global_position


func _on_ins_time_timeout() -> void:
	InstanciarObj()

func Fin():
	$PoInObjeto/InsTime.autostart = false
	$PoInObjeto/InsTime.stop()


func ComenzarNivel():
	if Global.vivo == true:
		$AnimationPlayer.play("TirarBotella")


func DetectoPerro(body: Node2D) -> void:
	if body.is_in_group("PJ"):
		var skin = 0
		skin = Global.Randomizar(1,2) 
		print(skin)
		if skin == 1:
			$Cucha.play()
		elif skin == 2:
			$Fuira.play()
