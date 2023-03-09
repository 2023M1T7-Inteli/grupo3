extends Node2D

var numero1
var numero2
var soma
var temporizador = 0

func _ready():
	$animacaoChegada.play("chegada")
	randomize()
	var numero1 = (randi() % 10)
	var numero2 = (randi() % 10)
	soma = numero1 + numero2


func _on_pronto_pressed():
	soma = String(soma)
	if $resposta.text == soma:
		print("acertou")
	elif $resposta.text != soma:
		print("errou")
		
func _process(delta):
	temporizador += 1
	if temporizador >= 120:
		$dialogoPintor.visible = true
	if $dialogoPintor.terminouTutorial:
		$dialogoPintor.visible = false
		
