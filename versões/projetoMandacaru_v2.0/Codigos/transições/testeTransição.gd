extends Node2D

#cria uma variável chamada terminou como falsa
var terminou = false

#função iniciada quando a cena for aberta
func _ready():
	#inicia a animação "tittle" que movimeta os botões
	$AnimationPlayer.play("tittle")
	
#função rodada a cada frame do jogo
func _process(delta):
	#adiciona 50 à posição x da sprite "Sprite"
	$Sprite.position.x += 50
	#adiciona 50 à posição x da sprite "Sprite2"
	$Sprite2.position.x += 50
	#condição que roda quando a posição da sprite "Sprite" excede o tamanho da sprite
	if $Sprite.position.x >= 1920+1920/2:
		#volta a sprite "Sprite" para fora da tela (cria um movimento)
		$Sprite.position.x = -1920/2
	#condição que roda quando a posição da sprite "Sprite2" excede o tamanho da sprite
	if $Sprite2.position.x >= 1920+1920/2:
		#volta a sprite "Sprite2" para fora da tela (cria um movimento)
		$Sprite2.position.x = -1920/2
		
#função ativada quando a animação "AnimationPlayer" termina
func _on_AnimationPlayer_animation_finished(anim_name):
	#torna a variável "terminou" verdadeira
	terminou = true
