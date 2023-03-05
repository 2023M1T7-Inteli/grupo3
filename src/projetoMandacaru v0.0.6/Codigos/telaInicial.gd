extends Control

var contador = 0
var validacao = true
var musica = true
var mutedIcon = preload("res://Imagens/mute.png")
var mismutedIcon = preload("res://Imagens/speaker.png")


func _ready():
	$tituloAnim.play("title")

	
func _process(delta):
	if validacao:
		contador += 1
		if contador >= 140:
			validacao = false
			contador = 0


func _on_botaoIniciar_pressed():
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")
	
func _on_botaoControles_pressed():
	get_tree().change_scene("res://Telas/telaIinicial/telaControles.tscn")
	
func _on_botaoSair_pressed():
	get_tree().quit()
	
func _on_botaoSair_mouse_entered():
	$botaoSelecionado.play()

func _on_botaoControles_mouse_entered():
	$botaoSelecionado.play()

func _on_botaoIniciar_mouse_entered():
	$botaoSelecionado.play()

func _on_botaoSom_pressed():
	if !$musicaFundo.stream_paused:
		$musicaFundo.stream_paused = true
		$botaoSom.icon = mutedIcon
	else:
		$musicaFundo.stream_paused = false
		$botaoSom.icon = mismutedIcon
