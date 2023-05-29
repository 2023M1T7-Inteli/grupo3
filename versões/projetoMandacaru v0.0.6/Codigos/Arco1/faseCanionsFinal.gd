extends Node2D

#função que roda quando a cena inicia
func _ready():
	#inicia a animação do personagem para a direita, simulando uma caminhada
	$personagemCena/corpoJogador/animacaoPersonagem.play("Direita")
	#aciona a cutscene final
	$cutCenaFinalCanions.play("cutFaseCanionsFinal")
