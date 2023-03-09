extends Node2D
#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorialInicial = false
	
#função que inicia quando a cena começa 
func _ready():
	#torna a sprite "spriteBoi" visível
	$balao1.visible = true
	$caixaDialogo1.visible = true
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	#adiciona o valor 1 ao contador
	contador += 1
	if contador == 1: 
		$balao1.visible = false
		$caixaDialogo1.visible = false
		$balao2.visible = true
		$caixaDialogo2.visible = true
	#condição que ativa qunado o contador excede 11
	elif contador == 2:
		$balao1.visible = false
		$caixaDialogo1.visible = false
		$balao2.visible = false 
		$caixaDialogo2.visible = false
		$balao3.visible = true
		$caixaDialogo3.visible = true
		
	if contador >= 3:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorialInicial = true
