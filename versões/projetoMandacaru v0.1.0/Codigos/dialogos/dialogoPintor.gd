extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Olá, tudo bem?\n Você poderia me ajudar a contar quantas latas de tinta eu tenho na estante?", ""]

#função que roda a cada atualização da tela
func _process(delta):
	#define o texto que aparecerá na caixa de diálogo
	$caixaDialogo.text = dialogo[contador]
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	#adiciona o valor 1 ao contador
	contador += 1
	#função que roda quando a sprite "spriteBoi" for visível
	if contador >= 1:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorial = true
