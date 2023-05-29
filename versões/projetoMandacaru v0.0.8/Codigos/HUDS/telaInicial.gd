extends Control

#define uma variável chamada "contador", que irá armazenar o valor 0
var contador = 0
#define uma variável chamada "validação" com o valor verdadeiro
var validacao = true
#define uma variável chamada "musica", que irá armazenar verificar se a música está rodando
var musica = true
#carrega a imagem de mutar a música
var mutedIcone = preload("res://Imagens/mute.png")
#carrega  aimagem da música silenciada
var mismutedIcone = preload("res://Imagens/speaker.png")

#função que inicia quando a cena é chamada
func _ready():
	#inicia a animação "tittle" que movimenta o personagem
	$tituloAnim.play("title")
	
#função que roda a cada frame do jogo
func _process(delta):
	#função que inicia se a variável validação for verdadeira
	if validacao:
		#adiciona o valor 1 ao contador
		contador += 1
		#condição que inicia se o contador exceder 140
		if contador >= 140:
			#torna a variável "validação" falsa
			validacao = false
			#reinicia o contador
			contador = 0
			
#função ativada quando o botão "botaoIniciar" for pressionado
func _on_botaoIniciar_pressed():
	#cria uma árvore de cenas que chama a fase 1
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")
	
#função ativada quando o botão "botaoControles" for pressionado
func _on_botaoControles_pressed():
	#cria uma árvore de cenas que chama a tela de controles
	get_tree().change_scene("res://Telas/telaIinicial/telaControles.tscn")
	
#função ativada quando o botão "botaoSair" for pressionado
func _on_botaoSair_pressed():
	#finaliza a árvore de cenas e fecha o jogo
	get_tree().quit()
	
#função ativada quando o mouse entrar no botão "botaoSair"
func _on_botaoSair_mouse_entered():
	#inicia o áudio "botaoSelecionado"
	$botaoSelecionado.play()
	
#função ativada quando o mouse entrar no botão "botaoControles"
func _on_botaoControles_mouse_entered():
	#inicia o áudio "botaoSelecionado"
	$botaoSelecionado.play()
	
#função ativada quando o mouse entrar no botão "botaoIniciar"
func _on_botaoIniciar_mouse_entered():
	#inicia o áudio "botaoSelecionado"
	$botaoSelecionado.play()
	
#função ativada quando o botão "botaoSom" for pressionado
func _on_botaoSom_pressed():
	#condição que inicia se a música de fundo não estiver pausada
	if !$musicaFundo.stream_paused:
		#torna a parada da música de fundo verdadeira
		$musicaFundo.stream_paused = true
		#muda o ícone para o botão mutado
		$botaoSom.icon = mutedIcone
	#inicia se a condição acima não for validada
	else:
		#torna a parada da música de fundo falsa
		$musicaFundo.stream_paused = false
		#muda o ícone para o botão não mutado
		$botaoSom.icon = mismutedIcone
