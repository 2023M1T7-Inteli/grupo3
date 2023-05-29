extends Node2D

#função que inicializa a interface
func _ready():
	#inicia a transição
	$animacaoTransicao.play("transicaoGeral")
