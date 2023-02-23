extends Node2D

func _ready():
	pass

func _on_botaoCima_pressed():
	Global.lista.append("cima")

func _on_botaoBaixo_pressed():
	Global.lista.append("baixo")

func _on_botaoDireita_pressed():
	Global.lista.append("direita")

func _on_botaoEsquerda_pressed():
	Global.lista.append("esquerda")

func _on_Button3_pressed():
	Global.iniciou = true
