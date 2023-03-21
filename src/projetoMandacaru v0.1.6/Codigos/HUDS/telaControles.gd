extends Control

#função ativada quando o botão "botaoVoltar" for pressionado
func _on_botaoVoltar_pressed():
	#muda a cena para a cena "telaInicial"
	get_tree().change_scene("res://Telas/telaIinicial/telaInicial.tscn")

func _on_botaoSom_pressed():
	#condição que inicia se a música de fundo não estiver pausada
	if !Global.musica_fundo.stream_paused:
		#torna a parada da música de fundo verdadeira
		Global.musica_fundo.stream_paused = true
		#muda o ícone para o botão mutado
		$botaoSom.icon = preload("res://Imagens/mute.png")
	#inicia se a condição acima não for validada
	else:
		#torna a parada da música de fundo falsa
		Global.musica_fundo.stream_paused = false
		#muda o ícone para o botão não mutado
		$botaoSom.icon = preload("res://Imagens/speaker.png")

func _on_VoltarBtn_pressed():
	get_tree().change_scene("res://Telas/telaIinicial/telaInicial.tscn")
