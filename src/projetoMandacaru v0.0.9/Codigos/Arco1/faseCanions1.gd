extends Node2D

#função que é rodada quando a cena é chamada
func _ready():
	#torna a cena de tutorial escondida
	$tutorialCena.visible = false
	
#função que roda junto à atualização de frames
func _process(delta):
	#condição ativada quando a posição x do personagem excede 1920 pixels
	if $personagemCena/corpoJogador.position.x >= 1920:
		#cria uma árvore de cenas que muda para a fase 4 dos cânions
		get_tree().change_scene("res://Telas/Arco1/faseCanions4.tscn")
		#reinicia a lista global
		Global.lista = []
		
	#condição ativada quando a variável "terminou" da cena "transiçãoVento" é verdadeira
	if $transicaoVento.terminou:
		#torna a cena "transiçãoVento" escondida
		$transicaoVento.visible = false
		#torna a cena "tutorialCena" à mostra
		$tutorialCena.visible = true
		#muda a variável "terminou" da cena "transiçãoVento" para falsa
		$transicaoVento.terminou = false
		
	#condição ativada quando a variável "terminouTutorial" da cena "tutorialCena" é verdadeira
	if $tutorialCena.terminouTutorial:
		#torna a cena "tutorialCena" visível
		$tutorialCena.visible = false
		#torna a cena "Interface" visível
		$Interface.visible = true
		$tutorialInicio.visible = true
		
	if $tutorialInicio.terminouTutorialInicial:
		#torna a cena "tutorialCena" visível
		$tutorialInicio.visible = false
