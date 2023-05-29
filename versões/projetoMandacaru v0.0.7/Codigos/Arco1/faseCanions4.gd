extends Node2D

#cria uma variável chamada "rodar" com valor verdadeiro
var rodar =  true

#função que roda a cada frame do jogo
func _process(delta):
	#condição rodada quando a posição x do jogador excede 1920
	if $personagemCena/corpoJogador.position.x >= 1920:
		#cria uma árvore de cenas que muda a cena para a fase final
		get_tree().change_scene("res://Telas/Arco1/faseCanionsFinal.tscn")
		#reinicia a lista global
		Global.lista = []
