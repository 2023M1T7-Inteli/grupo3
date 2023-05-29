extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Olá! Tudo bem?", "Uau! Voce é pintor!","Estou procurando por um quadro dos canions dourados, será que você viu?", "Pintor: Um quadro dos canions? Só um momento!", "Pintor:Seria esse?", "Sim! É esse!", "Pintor: O que acha de me fazer um favor e em troca eu te dou o quadro?", "Claro! Vamos nessa!",]

#função que roda a cada atualização da tela
func _process(delta):
	#define o texto que aparecerá na caixa de diálogo
	$caixaDialogo.text = dialogo[contador]
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	#adiciona o valor 1 ao contador
	contador += 1
	#função que roda quando a sprite "spriteBoi" for visível
	if contador >= 8:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorial = true
		
	if contador == 4:
		$quadroCanions.visible = true
	
	if contador == 8:
		get_tree().change_scene("res://Codigos/Arco1/cena_fase_mat/cena_mat.tscn")
