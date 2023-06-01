extends Node2D

#variavel utilizada no controle da cena
var controle = false

#função que faz a transicao da cena acontecer
func _process(delta):
	if $".".visible==true && controle == false:
		#inicia uma "animationTree" que possui uma animação de cena
		$animacao.play("transicaoperdeu")
		controle = true
		if Global.fase == 1:
			Global.itens["pipoca"][0] = false
			Global.itens["pipoca"][1] = false
		elif Global.fase == 3:
			Global.itens["baloes"][0] = false
			Global.itens["baloes"][1] = false
		elif Global.fase == 5:
			Global.itens["instrumentos"][0] = false
			Global.itens["instrumentos"][1] = false
		elif Global.fase == 7:
			Global.itens["roupa"][0] = false
			Global.itens["roupa"][1] = false
		elif Global.fase == 7:
			Global.itens["fitas"][0] = false
			Global.itens["fitas"][1] = false
		elif Global.fase == 7:
			Global.itens["fitas"][0] = false
			Global.itens["fitas"][1] = false
#função que inicia quando o botão "botaoReiniciar" for pressionado
func _on_botaoReiniciar_pressed():
	#torna a cenaperdeu invisivel
	$".".visible= false
	$animacao/fundoperdeu.visible=false
	$animacao/fundo.visible=false
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
