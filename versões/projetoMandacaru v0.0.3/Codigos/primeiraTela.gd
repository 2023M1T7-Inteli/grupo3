extends Node2D

#define uma variável com o valor de pré carregamento da tela de interface
var telainicializacao = preload("res://Telas/interface.tscn").instance()

#função que inicializa a interface
func _ready():
	#adiciona na árvore de cenas uma tela flutuante com o valor "telainicializacao"
	get_tree().current_scene.add_child(telainicializacao)
	#inicia a cutscene principal
	$cutscene.play("cutscene")
	
#função que inicializa quando um corpo entra no alcance
func _on_areaDeColisao_body_entered(body):
	#busca a próxima cena e a sentencia
	$mapa/corpoJogador.trocarcena()

