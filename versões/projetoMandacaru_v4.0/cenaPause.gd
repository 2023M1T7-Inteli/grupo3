 extends Node2D

#carrega a imagem de mutar a música
var mutadoIcone = preload("res://Imagens/mute.png")
#carrega  aimagem da música silenciada
var desmutadoIcone = preload("res://Imagens/speaker.png")

#função que contém a função de mutar o som e desmutar
func _process(delta):
	if !Global.get_node("musicaPrincipal").stream_paused:
		$CanvasLayer/botaoSom.icon = desmutadoIcone
	else: $CanvasLayer/botaoSom.icon = mutadoIcone
	
#torna invisível a cena de pause
func _on_voltarButton_pressed():
	$pauseOverlay.visible = true
	$CanvasLayer.visible = false
	
#torna a cena de pause invisível
func _on_pauseButton_pressed():
	$pauseOverlay.visible = false
	$CanvasLayer.visible = true
	
#volta para a tela inicial e para a música de fundo
func _on_quitButton_pressed():
	Global.musica_fundo.volume_db = -2
	Global.musica_fundo.play()
	Global.musica_principal.stop()
	get_tree().change_scene("res://Telas/telaIinicial/telaInicial.tscn")
	
#pausa e inicia a música
func _on_botaoSom_pressed():
	#condição que inicia se a música de fundo não estiver pausada
	if !Global.musica_principal.stream_paused:
		#torna a parada da música de fundo verdadeira
		Global.musica_principal.stream_paused = true
		#muda o ícone para o botão mutado
		$CanvasLayer/botaoSom.icon = mutadoIcone
	#inicia se a condição acima não for validada
	else:
		#torna a parada da música de fundo falsa
		Global.musica_principal.stream_paused = false
		#muda o ícone para o botão não mutado
		$CanvasLayer/botaoSom.icon = desmutadoIcone
