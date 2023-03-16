extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Ola! Muito prazer! Eu sou o Boi Bumba!","Preciso da sua ajuda para organizar meu festival aqui em Alagoas.", "Sua missao é recuperar os itens que foram perdidos por Alagoas e chegar ao final do mapa para realizar o festival 'Bumba Meu Boi'", "Ao final de cada fase concluida, voce conquistara um dos meus 5 itens perdidos. Boa Sorte!", "" ]
	
#função que inicia quando a cena começa 
func _ready():
	#torna a sprite "spriteBoi" visível
	$spriteBoi.visible = true
	#torna a sprite "spritePersonagem" invisível

	
#função que roda a cada atualização da tela
func _process(delta):
	#define o texto que aparecerá na caixa de diálogo
	$caixaDialogo.text = dialogo[contador]
	
#função que roda quando a animação "tutorial" acaba
func _on_tutorial_animation_finished(anim_name):
	#torna a variável "terminouTutorial" verdadeira
	terminouTutorial = true
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	#adiciona o valor 1 ao contador
	contador += 1
	#função que roda quando a sprite "spriteBoi" for visível
	
	#condição que ativa quado o contador excede 6
	if contador >= 4:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorial = true
