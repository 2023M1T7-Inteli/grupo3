extends Node2D

#função que roda quando a cena inicia
func _ready():
	#inicia a animação do personagem para a direita, simulando uma caminhada
	#$personagemCena/corpoJogador/animacaoPersonagem.play("Direita")
	#aciona a cutscene final
	$cutCenaFinalCanions.play("cutFaseCanionsFinal")
	
#função que inicia quando um corpo entra na area "areaCabana"
func _on_areaCabana_body_entered(body):
	#muda a cena para a cena do pescador
	get_tree().change_scene("res://Telas/Arco1/cenaPescador.tscn")
