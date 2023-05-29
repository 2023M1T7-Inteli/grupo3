extends Control

#valor inicial de um contador interno
var contador = 0
#variável definida como verdadeira, que irá participar da inicialização do relógio
var validacao = true
#variável que verifica se a música do jogo está ou não rodando
var parouMusica = false

#função que inicializa a interface
func _ready():
	#inicia a animação dos botões da tela principal
	$animacaoBotoes.play("cenaInicial")
	#inicia a música de fundo
	$musicaFundo.play()
	
#função que roda a cada frame do jogo
func _process(delta):
	#condição que roda se a variável "validação" receber valor verdadeiro
	if validacao:
		#adiciona o valor 1 ao contador
		contador += 1
		#condição que roda se o contador exceder 140
		if contador >= 140:
			#esconde a camada de animação para não afetar nos controles
			$transicao/animacaoTransicao/fundo.hide()
			#torna falsa a variável de validação do relógio
			validacao = false
			#reinicia o contador
			contador = 0
			
#função que inicia quando o botão "botaoIniciar" for pressionado
func _on_botaoIniciar_pressed():
	#muda a cena atual para a tela principal
	get_tree().change_scene("res://Telas/primeiraTela.tscn")
	
#função que inicia quando o botão "botaoControles" for pressionado
func _on_botaoControles_pressed():
	#muda a cena atual para a tela de controles
	get_tree().change_scene("res://Telas/telaControles.tscn")
	
#função que inicia quando o botão "botaoSair" for pressionado
func _on_botaoSair_pressed():
	#finaliza as cenas atuais, fechando o jogo
	get_tree().quit()
	
#função que inicia quando o tempo da música de fundo, definido por "musicaFundo", finaliza
func _on_musicaFundo_finished():
	#condição que inicia quando a variável "paroumusica" é falsa
	if parouMusica == false:
		#inicia novamente a música de fundo
		$musicaFundo.play()
		
#função que inicia quando o mouse entrar no alcance do botão "botaoSair"
func _on_botaoSair_mouse_entered():
	#inicia o som que representa o botão selecionado
	$botaoSelecionado.play()
	
#função que inicia quando o mouse entrar no alcance do botão "botaoControles"
func _on_botaoControles_mouse_entered():
	#inicia o som que representa o botão selecionado
	$botaoSelecionado.play()
	
#função que inicia quando o mouse entrar no alcance do botão "botaoIniciar"
func _on_botaoIniciar_mouse_entered():
	#inicia o som que representa o botão selecionado
	$botaoSelecionado.play()
	
#função que inicia quando o botão "botaosom" for pressionado
func _on_botaoSom_pressed():
	#condição que inicia se a variável "paroumusica" for verdadeira
	if parouMusica:
		#inicia a música de fundo
		$musicaFundo.play()
		#converte a variável "paroumusica" em falso
		parouMusica = false
	elif $musicaFundo.playing:
		#inicia a música de fundo
		$musicaFundo.stop()
		#converte a variável "paroumusica" em verdadeiro
		parouMusica = true
