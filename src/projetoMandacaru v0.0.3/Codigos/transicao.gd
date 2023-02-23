extends Node2D

#função que inicializa a interface
func _ready():
	#inicia a animação de transição
	$animacaoTransicao.play("transicaoGeral")
