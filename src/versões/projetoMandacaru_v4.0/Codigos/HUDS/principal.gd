extends Node2D

#cria uma variável que verifica como falso ou verdadeiro se o botão "Iniciar"
var botaoIniciarPressionado = false
#variavel indice para a lista de sprites
var i = 0
#variavel lista de sprites
var listaSprites
var umaVez = true
#faz load das texturas das setas amarelas
var amarelaEsquerda = load("res://Imagens/Setas/EsquerdaAmareloGrande.png")
var amarelaDireita = load("res://Imagens/Setas/DireitaAmareloGrande.png")
var amarelaCima = load("res://Imagens/Setas/CimaAmareloGande.png")
var amarelaBaixo = load("res://Imagens/Setas/BaixoAmareloGrande.png")
 
#instancia os objetos do tipo sprite e coloca eles em uma lista
func _ready():
	var sprite = $Sprite
	var sprite2 = $Sprite2
	var sprite3 = $Sprite3
	var sprite4 = $Sprite4
	var sprite5 = $Sprite5
	var sprite6 = $Sprite6
	var sprite7 = $Sprite7
	var sprite8 = $Sprite8
	var sprite9 = $Sprite9
	var sprite10 = $Sprite10
	var sprite11 = $Sprite11
	listaSprites =[sprite,sprite2,sprite3,sprite4,sprite5,sprite6,sprite7,sprite8,sprite9,sprite10, sprite11]

#função que inicia quando o botão "botaoCima" é pressionado
func _on_botaoCima_pressed(): 
	processarHudSetas("cima")
	
#função que inicia quando o botão "botaoBaixo" é pressionado
func _on_botaoBaixo_pressed():
	processarHudSetas("baixo")
	
#função que inicia quando o botão "botaoDireita" é pressionado
func _on_botaoDireita_pressed():
	if Global.tutorialInicioCont == 0:
		Global.tutorialInicioCont += 1
	elif Global.tutorialInicioCont == 2:
		Global.tutorialInicioCont +=1
	processarHudSetas("direita")
		
#função que inicia quando o botão "botaoEsquerda" é pressionado
func _on_botaoEsquerda_pressed():
	processarHudSetas("esquerda")
	
#função que inicia quando o botão "botaoIniciar" é pressionado
func _on_botaoIniciar_pressed():
	if Global.tutorialInicioCont == 3:
		Global.tutorialInicioCont += 1
	if umaVez :
		#altera o valor da constante global "iniciou" para verdadeiro
		Global.iniciou = true
		#transfoma a variável "botaoIniciarPressionado" em verdadeira
		botaoIniciarPressionado = true
		umaVez = false

#função que inicia quando o botão "botaoDelete" é pressionado
func _on_botaoDelete_pressed():
	if Global.tutorialInicioCont == 1:
		Global.tutorialInicioCont += 1
	if(len(Global.lista)>0):
		if botaoIniciarPressionado == false:
				#deleta o ultimo valor da lista global
				Global.lista.pop_back()
				#decrementa o indice i
				i-=1
				#torna a sprite no indice atual invisivel
				listaSprites[i].visible = false

#processa a interface das setas amarelas que mostram os comandos de movimento presentes na lista global			
func processarHudSetas(direcao):
	#checa se o tamanho da lista vai ultrapassar o tamanho maximo
	if(len(Global.lista)<11):
		if botaoIniciarPressionado == false:
			#adiciona o valor da variavel direcao à lista global
			Global.lista.append(direcao)
			#modifica a textura da sprite no indice atual baseado no argumento direcao e torna-a visivel
			match direcao:
				"esquerda":
					listaSprites[i].texture = amarelaEsquerda
				"direita":
					listaSprites[i].texture = amarelaDireita
				"cima":
					listaSprites[i].texture = amarelaCima
				"baixo":
					listaSprites[i].texture = amarelaBaixo
			listaSprites[i].visible = true
			#passa de indice i
			i+=1
	
		
		
