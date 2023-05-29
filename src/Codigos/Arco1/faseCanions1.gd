extends Node2D

#função que é rodada quando a cena é chamada
func _ready():
	#torna a cena de tutorial escondida e inicia a música de fundo
	$tutorialCena.visible = false
	yield(get_tree().create_timer(3), "timeout")
	Global.get_node("musicaPrincipal").play()
	
	
#função que roda junto à atualização de frames
func _process(delta):
	#leva o jogador à última cena, para testers
	if Global.lista == ["baixo","baixo","baixo","baixo","baixo","baixo","baixo","baixo","baixo","baixo","cima"]:
		Global.lista = []
		get_tree().change_scene("res://Telas/Arco2/faseMaceio5.tscn")
	Global.fase = 1
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


func _on_Area2D_body_entered(body):
	#cria uma árvore de cenas que muda para a fase 4 dos cânions
		get_tree().change_scene("res://Telas/Arco1/faseCanions2.tscn")
		#reinicia a lista global
		Global.lista = []

#define qual o endereço da fase para que seja definido o inventário
func _on_AreaItem_body_entered(body):
	if body == $personagemCena/corpoJogador:
		$AreaItem.visible = false
		Global.itens['pipoca'][0] = true
		Global.get_node("item").play()
