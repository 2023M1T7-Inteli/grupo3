extends Node2D

#cria uma variável que verifica como falso ou verdadeiro se o botão "Iniciar"
var botaoIniciarPressionado = false
#variavel indice para a lista de sprites
var i = 0
#variavel lista de sprites
var listaSprites
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
	listaSprites =[sprite,sprite2,sprite3,sprite4,sprite5,sprite6,sprite7,sprite8,sprite9]
	
#função que inicia quando o botão "botaoCima" é pressionado
func _on_botaoCima_pressed(): 
	if botaoIniciarPressionado == false:
		#adiciona o valor "cima" à lista global
		Global.lista.append("cima")
		#modifica a textura da sprite no indice atual e torna-a visivel
		listaSprites[i].texture = amarelaCima
		listaSprites[i].visible = true
		#passa de indice i
		i+=1
		
		
	
#função que inicia quando o botão "botaoBaixo" é pressionado
func _on_botaoBaixo_pressed():
	if botaoIniciarPressionado == false:
		#adiciona o valor "baixo" à lista global
		Global.lista.append("baixo")
		#modifica a textura da sprite no indice atual e torna-a visivel
		listaSprites[i].texture = amarelaBaixo
		listaSprites[i].visible = true
		#passa de indice i
		i+=1
	
#função que inicia quando o botão "botaoDireita" é pressionado
func _on_botaoDireita_pressed():
	if botaoIniciarPressionado == false:
		#adiciona o valor "direita" à lista global
		Global.lista.append("direita")
		#modifica a textura da sprite no indice atual e torna-a visivel
		listaSprites[i].texture = amarelaDireita
		listaSprites[i].visible = true
		#passa de indice i
		i+=1
		
#função que inicia quando o botão "botaoEsquerda" é pressionado
func _on_botaoEsquerda_pressed():
	if botaoIniciarPressionado == false:
		#adiciona o valor "esquerda" à lista global
		Global.lista.append("esquerda")
		#modifica a textura da sprite no indice atual e torna-a visivel
		listaSprites[i].texture = amarelaEsquerda
		listaSprites[i].visible = true
		#passa de indice i
		i+=1
#função que inicia quando o botão "botaoIniciar" é pressionado
func _on_botaoIniciar_pressed():
	#altera o valor da constante global "iniciou" para verdadeiro
	Global.iniciou = true
	#transfoma a variável "botaoIniciarPressionado" em verdadeira
	botaoIniciarPressionado = true

#função que inicia quando o botão "botaoDelete" é pressionado
func _on_botaoDelete_pressed():
	if botaoIniciarPressionado == false:
			#deleta o ultimo valor da lista global
			Global.lista.pop_back()
			#decrementa o indice i
			i-=1
			#torna a sprite no indice atual invisivel
			listaSprites[i].visible = false
		
