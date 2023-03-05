extends Node2D

var rodar =  true

func _process(delta):
	if $personagemCena/corpoJogador.position.x >= 1920:
		get_tree().change_scene("res://Telas/Arco1/faseCanionsFinal.tscn")
		Global.lista = []
