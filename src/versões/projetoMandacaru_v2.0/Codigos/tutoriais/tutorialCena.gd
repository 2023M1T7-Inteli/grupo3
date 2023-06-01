extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Olá, eu sou o Boi Bumbá! Vejo que está procurando chegar às margens do Rio Sâo Francisco para encontrar o pintor. Posso te dar algumas instruçôes para chegar lá em segurança.","Olá, Boi Bumbá! Sim, por favor! Estou ansioso para chegar até lá e conversar com o pintor.", "Bem, o caminho até o Rio Sâo Francisco é longo e cheio de perigos. As íngremes ladeiras dos Cânions Dourados e Olho d'água do Casado sâo particularmente desafiadoras. Mas nâo se preocupe, eu posso te ajudar.", "Agradeço muito, Boi Bumbá. O que devo fazer para chegar lá?", "Primeiro, você deve listar todos os seus passos com as setas abaixo, logo depois iniciar seu movimento para seguir a jornada.", "Ok, estou preparado. E depois?","Depois, você deve seguir as trilhas bem marcadas pelas montanhas. Tenha cuidado ao caminhar nas íngremes ladeiras e nas encostas.",  "Certo, vou prestar atençâo.", "Por fim, quando chegar às margens do Rio Sâo Francisco, você terá que convencer  o pintor a lhe entregar a pintura para o festival, certifique-se que será bem educado.", "Ok, estou pronto para enfrentar os desafios. Obrigado pelas dicas, Boi Bumbá.", "Boa sorte em sua jornada, viajante! E lembre-se: a jornada é tão importante quanto o destino. Aproveite cada momento desta experiência única e inesquecível.", ""]
	
#função que inicia quando a cena começa 
func _ready():
	#torna a sprite "spriteBoi" visível
	$spriteBoi.visible = true
	#torna a sprite "spritePersonagem" invisível
	$spritePersonagem.visible = false
	
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
	if $spriteBoi.visible:
		#torna a sprite "spriteBoi" invisível
		$spriteBoi.visible = false
		#torna a sprite "spritePersonagem" visível
		$spritePersonagem.visible = true
	#função que roda quando a sprite "spritePersonagem" estiver visível
	elif $spritePersonagem.visible:
		#torna a sprite "spriteBoi" visível
		$spriteBoi.visible = true
		#torna a sprite "spritePersonagem" invisível
		$spritePersonagem.visible = false
	#condição que ativa qunado o contador excede 11
	if contador >= 11:
		#torna a variável "terminouTutorial" verdadeira
		terminouTutorial = true
