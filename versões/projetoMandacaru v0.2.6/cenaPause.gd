 extends Node2D

#carrega a imagem de mutar a música
var mutadoIcone = preload("res://Imagens/mute.png")
#carrega  aimagem da música silenciada
var desmutadoIcone = preload("res://Imagens/speaker.png")
	
func _on_voltarButton_pressed():
	$pauseOverlay.visible = true
	$CanvasLayer.visible = false

func _on_pauseButton_pressed():
	$pauseOverlay.visible = false
	$CanvasLayer.visible = true

func _on_quitButton_pressed():
	get_tree().change_scene("res://Telas/telaIinicial/telaInicial.tscn")

