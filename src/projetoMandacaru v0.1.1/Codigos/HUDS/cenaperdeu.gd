extends Node2D

#função que inicializa a cena
func _ready():
	#inicia uma "animationTree" que possui uma animação de cena
	$animacao.play("transicaoperdeu")
	
#função que inicia quando o botão "botaoReiniciar" for pressionado
func _on_botaoReiniciar_pressed():
	#limpa a fila de cenas abertas
	get_tree().current_scene.queue_free()
	#reinicia a lista de movimento do jogador
	Global.lista = []
	#inicia novamente a cena principal
	get_tree().reload_current_scene()
	
#função que inicia quando o botão "botaoSair" for pressionado
func _on_botaoSair_pressed():
	#finaliza a árvore de cenas
	get_tree().quit()
	
#função que inicia quando o mouse entrar no alcance do botão "botaoReiniciar"
func _on_botaoReiniciar_mouse_entered():
	#inicia o áudio "botaoselecionado", que simula um som de passos
	$botaoSelecionado.play()
	
#função que inicia quando o mouse entrar no alcance do botão "botaoSair"
func _on_botaoSair_mouse_entered():
	#inicia o áudio "botaoselecionado", que simula um som de passos
	$botaoSelecionado.play()
