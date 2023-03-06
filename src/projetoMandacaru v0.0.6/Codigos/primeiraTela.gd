extends Node2D

#função que inicializa a interface
func _ready():
	#inicia a cutscene principal
	$cutscene.play("cutscene")
	
#função que inicializa quando um corpo entra no alcance
func _on_areaDeColisao_body_entered(body):
	#busca a próxima cena e a sentencia
	$personagemCena/corpoJogador.trocarcena()

