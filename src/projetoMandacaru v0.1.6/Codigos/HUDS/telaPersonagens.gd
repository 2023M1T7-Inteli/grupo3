extends Control

var joao = load("res://Imagens/sprite boy grande 3_0.png")
var maria = load("res://Imagens/spriteGirl.png")
#carrega a imagem de mutar a música
var mutadoIcone = preload("res://Imagens/mute.png")
#carrega  aimagem da música silenciada
var desmutadoIcone = preload("res://Imagens/speaker.png")


func _on_BotaoJoao_pressed():
	Global.personagem = 1
	Global.volume("musicaFundo")
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")

func _on_BotaoMaria_pressed():
	Global.personagem = 2
	Global.volume("musicaFundo")
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")

func _on_botaoSom_pressed():
	#condição que inicia se a música de fundo não estiver pausada
	if !Global.musica_fundo.stream_paused:
		#torna a parada da música de fundo verdadeira
		Global.musica_fundo.stream_paused = true
		#muda o ícone para o botão mutado
		$botaoSom.icon = mutadoIcone
	#inicia se a condição acima não for validada
	else:
		#torna a parada da música de fundo falsa
		Global.musica_fundo.stream_paused = false
		#muda o ícone para o botão não mutado
		$botaoSom.icon = desmutadoIcone

func _on_BotaoJoao_mouse_entered():
	$MolduraJoao.texture = preload("res://Imagens/moldurapress.png")
	$botaoSelecionado.play()

func _on_BotaoJoao_mouse_exited():
	$MolduraJoao.texture = preload("res://Imagens/moldura.png")

func _on_BotaoMaria_mouse_entered():
	$MolduraMaria.texture = preload("res://Imagens/moldurapress.png")
	$botaoSelecionado.play()

func _on_BotaoMaria_mouse_exited():
	$MolduraMaria.texture = preload("res://Imagens/moldura.png")

func _on_VoltarBtn_pressed():
	get_tree().change_scene("res://Telas/telaIinicial/telaInicial.tscn")
