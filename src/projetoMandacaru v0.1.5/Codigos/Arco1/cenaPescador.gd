
extends Node2D

#cria uma variável para os números a serem cálculados pelo usuário
var numero1
#cria outra variável para os números a serem cálculados pelo usuário
var numero2
#cria uma variável para armazenar o valor da soma dos números
var soma
#cria a variável "temporizador" para armazenar um número contador
var temporizador = 0

var joao = load("res://Imagens/sprite boy grande 3_0.png")
var maria = load("res://Imagens/spriteGirl.png")

#função que roda ao chamar a cena
func _ready():
	if Global.personagem == 1:
		$Sprite.texture = joao
	else:
		$Sprite.texture = maria
	#inicia a animação "chegada"
	$animacaoChegada.play("chegada")
	#aleatorializa a "seed" da cena
	randomize()
	#aleatorializa o primeiro número com limite em 10
	var numero1 = (randi() % 10)
	#aleatorializa o segundo número com limite em 10
	var numero2 = (randi() % 10)
	#muda o valor da variável "soma" para o valor da soma dos 2 números
	soma = numero1 + numero2
	
#inicializa quando o botão "pronto" é pressionado
func _on_pronto_pressed():
	#transforma a variável soma em String
	soma = String(soma)
	#condição iniciada quando a resposta do player recebe o valor da soma
	if $resposta.text == soma:
		#printa "acertou" para verificar
		print("acertou")
	#condição que inicia quando o valor de resposta do usuário é diferente da soma
	elif $resposta.text != soma:
		#printa "errou" para verificar
		print("errou")
		
#função que roda a cada frame do jogo
func _process(delta):
	#adiciona o valor 1 ao temporizador
	temporizador += 1
	#condição que inicia quando o temporizador tem valor menor que 120
	if temporizador >= 120:
		#torna a sprite de diálogo do pintor visível
		$dialogoPintor.visible = true
	#condição que inicia quando a variável "terminouTutorial" é verdadeira
	if $dialogoPintor.terminouTutorial:
		#torna a sprite de diálogo do pintor invisível
		$dialogoPintor.visible = false
		
