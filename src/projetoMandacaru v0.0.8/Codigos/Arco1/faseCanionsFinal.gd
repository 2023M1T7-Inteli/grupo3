extends Node2D

#função que roda quando a cena inicia
func _ready():
	#inicia a animação do personagem para a direita, simulando uma caminhada
	$personagemCena/corpoJogador/animacaoPersonagem.play("Direita")
	#aciona a cutscene final
	$cutCenaFinalCanions.play("cutFaseCanionsFinal")


func _on_areaCabana_body_entered(body):
	get_tree().change_scene("res://Telas/Arco1/cenaPescador.tscn")
