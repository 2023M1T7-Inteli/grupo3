extends Control

var relogio = 0
var validacao = true
var paroumusica = false

func _ready():
	$animacaoBotoes.play("cenaInicial")
	$musicaFundo.play()

func _process(delta):
	if validacao:
		relogio += 1
		if relogio >= 140:
			$transicao/animacaoTransicao/fundo.hide()
			validacao = false
			relogio = 0
		
func _on_botaoIniciar_pressed():
	get_tree().change_scene("res://Telas/telap.tscn")
	
func _on_botaoControles_pressed():
	get_tree().change_scene("res://Telas/telaControles.tscn")

func _on_botaoSair_pressed():
	get_tree().quit()

func _on_musicaFundo_finished():
	if paroumusica == false:
		$musicaFundo.play()

func _on_botaoSair_mouse_entered():
	$botaoselecionado.play()

func _on_botaoControles_mouse_entered():
	$botaoselecionado.play()

func _on_botaoIniciar_mouse_entered():
	$botaoselecionado.play()

func _on_botaosom_pressed():
	if paroumusica:
		$musicaFundo.play()
		paroumusica = false
	elif $musicaFundo.playing:
		$musicaFundo.stop()
		paroumusica = true
