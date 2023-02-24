extends Node2D

var gerouNumero = false
var abriucenario = false
var relogio = 0
var validacao =  true
	
func _ready():
	$cutscene.play("cutsceneCatedral")
	abriucenario = true

func _process(delta):
	if validacao:
		relogio += 1
		if relogio >= 140:
			$transicao/animacaoTransicao/fundo.hide()
			validacao = false
			relogio = 0 
			
	if abriucenario:
		abriucenario = false
