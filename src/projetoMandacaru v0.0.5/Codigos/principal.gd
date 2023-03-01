extends Node2D

#função que inicia quando o botão "botaoCima" é pressionado
func _on_botaoCima_pressed(): 
	#adiciona o valor "cima" à lista global
	Global.lista.append("cima")
	
#função que inicia quando o botão "botaoBaixo" é pressionado
func _on_botaoBaixo_pressed():
	#adiciona o valor "baixo" à lista global
	Global.lista.append("baixo")
	
#função que inicia quando o botão "botaoDireita" é pressionado
func _on_botaoDireita_pressed():
	#adiciona o valor "direita" à lista global
	Global.lista.append("direita")
	
#função que inicia quando o botão "botaoEsquerda" é pressionado
func _on_botaoEsquerda_pressed():
	#adiciona o valor "esquerda" à lista global
	Global.lista.append("esquerda")

#função que inicia quando o botão "botaoIniciar" é pressionado
func _on_botaoIniciar_pressed():
	#altera o valor da constante global "iniciou" para verdadeiro
	Global.iniciou = true
