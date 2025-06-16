extends Control

func _ready() -> void:
	OcultarMostrar()
	DesbloquearNiveles()

func VolverMapa() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
	$PantallaCarga.ActPantalla()

func IrANivel():
	$PantallaCarga.ActPantalla()
	Global.menu = "res://VersiónFinal/Escenas/Global/nivel_global.tscn"
	

func OcultarMostrar():
	if Global.barraP == 100:
		$Interfaz.visible = false
	elif Global.barraP == 0:
		$Interfaz.visible = true

func PrepararNivel(Boton):
	Global.Nivel = Boton
	IrANivel()

func InstanciarN1() -> void:
	PrepararNivel(1)

func InstanciarN2() -> void:
	PrepararNivel(2)

func InstanciarN3() -> void:
	PrepararNivel(3)

func InstanciarN4() -> void:
	PrepararNivel(4)

func InstanciarN5() -> void:
	PrepararNivel(5)

func InstanciarN6() -> void:
	PrepararNivel(6)

func InstanciarN7() -> void:
	PrepararNivel(7)
	
func InstanciarN8() -> void:
	PrepararNivel(8)
	
func InstanciarN9() -> void:
	PrepararNivel(9)
	
func InstanciarN10() -> void:
	PrepararNivel(10)

func DesbloquearNiveles():
	if Global.NivelesCompletados >= 1:
		$Candado.visible = false
		$Niveles/N2.disabled = false
	if Global.NivelesCompletados >= 2:
		$Candado2.visible = false
		$Niveles/N3.disabled = false
	if Global.NivelesCompletados >= 3:
		$Candado3.visible = false
		$Niveles/N4.disabled = false
	if Global.NivelesCompletados >= 4:
		$Candado4.visible = false
		$Niveles/N5.disabled = false
	if Global.NivelesCompletados >= 5:
		$Candado5.visible = false
		$Niveles/N6.disabled = false
	if Global.NivelesCompletados >= 6:
		$Candado6.visible = false
		$Niveles/N7.disabled = false
	if Global.NivelesCompletados >= 7:
		$Candado7.visible = false
		$Niveles/N8.disabled = false
	if Global.NivelesCompletados >= 8:
		$Candado8.visible = false
		$Niveles/N9.disabled = false
	if Global.NivelesCompletados >= 9:
		$Candado9.visible = false
		$Niveles/N10.disabled = false
	if Global.NivelesCompletados >=10:
		$CarpinchoPRototipo.modulate = "ffffff"
	if Global.NivelesCompletados == 0:
		$Niveles/N2.disabled = true
		$Niveles/N3.disabled = true
		$Niveles/N4.disabled = true
		$Niveles/N5.disabled = true
		$Niveles/N6.disabled = true
		$Niveles/N7.disabled = true
		$Niveles/N8.disabled = true
		$Niveles/N9.disabled = true
		$Niveles/N10.disabled = true
		
