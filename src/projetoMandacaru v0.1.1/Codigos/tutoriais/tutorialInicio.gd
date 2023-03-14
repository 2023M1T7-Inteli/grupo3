extends Node2D
#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorialInicial = false
	
#função que inicia quando a cena começa 
func _ready():
	#torna a sprite "balao1" visível
	$balao1.visible = true
	#torna a sprite "caixaDialogo1" visível
	$caixaDialogo1.visible = true
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	#adiciona o valor 1 ao contador
	contador += 1
	#condição que inicia quando o contador receber 1
	if contador == 1: 
		#torna a sprite "balao1" invisível
		$balao1.visible = false
		#torna a sprite "caixaDialogo1" invisível
		$caixaDialogo1.visible = false
		#torna a sprite "balao2" visível
		$balao2.visible = true
		#torna a sprite "caixaDialogo" visível
		$caixaDialogo2.visible = true
	#condição que ativa qunado o contador receber 2
	elif contador == 2:
		#torna a sprite "balao1" invisível
		$balao1.visible = false
		#torna a sprite "caixaDialogo1" invisível
		$caixaDialogo1.visible = false
		#torna a sprite "balao2" invisível
		$balao2.visible = false 
		#torna a sprite "caixaDialogo2" invisível
		$caixaDialogo2.visible = false
		#torna a sprite "balao3" visível
		$balao3.visible = true
		#torna a sprite "caixaDialogo3" visível
		$caixaDialogo3.visible = true
		
	#condição que inicia se o contador exceder 3
	if contador >= 3:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorialInicial = true
