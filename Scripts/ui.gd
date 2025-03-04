extends CanvasLayer

# Salir del juego (Cambia la escena a Menu).
func _on_salir_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")

# Pausa el juego.
func _on_pause_button_pressed() -> void:
	print("Botón de pausa presionado")
	get_tree().paused = true
	$"Control/Pause Button".visible = false
	$"Control/MOB Left Button".visible = false
	$"Control/MOB Right Button".visible = false
	$"Control/Restart Button".visible = false
	$"Control/MOB Jump Button".visible = false
	$Control/PAUSEBACKGROUND.visible = true
	$"Control/Continuar Button".visible = true
	$"Control/Salir Button".visible = true

# Invisibiliza los botones.
func _on_continuar_button_pressed() -> void:
		get_tree().paused = false
		$"Control/Pause Button".visible = true
		$"Control/MOB Left Button".visible = true
		$"Control/MOB Right Button".visible = true
		$"Control/Restart Button".visible = true
		$"Control/MOB Jump Button".visible = true
		$"Control/Continuar Button".visible = false
		$"Control/Salir Button".visible = false
		$Control/PAUSEBACKGROUND.visible = false
