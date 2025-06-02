extends Control


func IrARed(link):
	OS.shell_open(link)

func InsLucia() -> void:
	IrARed("https://www.instagram.com/kuro_ok_?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==")


func InsLucas() -> void:
	IrARed("https://www.instagram.com/luckjumilla/")


func ItchArgie() -> void:
	IrARed("https://argiegames.itch.io")


func ItchLucas() -> void:
	IrARed("https://theluck12.itch.io")


func InsArgie() -> void:
	IrARed("https://www.instagram.com/argiegames/")


func VolverMenu() -> void:
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_principal.tscn"
	get_tree().call_group("Interfaz","ActPantalla")
