extends Node2D

func _ready():
	$tutorialCena.visible = false
	
func _process(delta):
	if $personagemCena/corpoJogador.position.x >= 1920:
		get_tree().change_scene("res://Telas/Arco1/faseCanions4.tscn")
		Global.lista = []
		
	if $transicaoVento.terminou:
		$transicaoVento.visible = false
		$tutorialCena.visible = true
		$tutorialCena/tutorial.play("tutorialCanions")
		$transicaoVento.terminou = false
	
	if $tutorialCena.terminouTutorial:
		$tutorialCena.visible = false
		$Interface.visible = true
