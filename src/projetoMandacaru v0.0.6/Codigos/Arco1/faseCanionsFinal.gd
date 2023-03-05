extends Node2D


func _ready():
	$personagemCena/corpoJogador/animacaoPersonagem.play("Direita")
	$cutCenaFinalCanions.play("cutFaseCanionsFinal")
