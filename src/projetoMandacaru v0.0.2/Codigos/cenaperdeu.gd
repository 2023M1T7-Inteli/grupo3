extends Node2D


func _ready():
	$animacao.play("transicaoperdeu")
	
func _on_botaoReiniciar_pressed():
	get_tree().current_scene.queue_free()
	Global.lista = []
	get_tree().reload_current_scene()
	
func _on_botaoSair_pressed():
	get_tree().quit()
	
func _on_botaoReiniciar_mouse_entered():
	$botaoselecionado.play()
	
func _on_botaoSair_mouse_entered():
	$botaoselecionado.play()
