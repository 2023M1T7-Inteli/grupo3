extends Node2D

#função que inicia quando o botão "botaoCima" for pressionado
func _on_botaoCima_pressed():
	#adiciona o apêndice "cima" na lista global "lista"
	Global.lista.append("cima")
	
#função que inicia quando o botão "botaoBaixo" for pressionado
func _on_botaoBaixo_pressed():
	#adiciona o apêndice "baixo" na lista global "lista"
	Global.lista.append("baixo")
	
#função que inicia quando o botão "botaoDireita" for pressionado
func _on_botaoDireita_pressed():
	#adiciona o apêndice "direita" na lista global "lista"
	Global.lista.append("direita")
	
#função que inicia quando o botão "botaoEsquerda" for pressionado
func _on_botaoEsquerda_pressed():
	#adiciona o apêndice "esquerda" na lista global "lista"
	Global.lista.append("esquerda")
	
#função que inicia quando o botão "botaoIniciar" for pressionado
func _on_botaoIniciar_pressed():
	#envia o valor "true" para a variável global "iniciou"
	Global.iniciou = true
