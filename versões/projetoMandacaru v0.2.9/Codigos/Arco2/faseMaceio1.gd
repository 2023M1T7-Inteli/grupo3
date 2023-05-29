extends Node2D

#variável que define se a pedra explodiu
var explodiu = false

#nomeia o titulo da transição
func _ready():
	$transicaoVento2/Label.text = "MACEIO"

#função que roda junto à atualização de frames
func _process(delta):
	#define o endereço da cena
	Global.fase = 0
	if $transicaoVento2.terminou:
		#torna a cena "transiçãoVento" escondida
		$transicaoVento2.visible = false
		$transicaoVento2.terminou = false
		
#função que muda de fase ao ganhar
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Telas/Arco2/faseMaceio2.tscn")
	
#função que anima a explosão da pedra
func _on_Area2D2_body_entered(body):
	$Timer.start()
	$AnimatedSprite.play("default")
	
#contador que dá um tempo para  a pedra explodir
func _on_Timer_timeout():
	if explodiu == false:
		explodiu()
		$Timer.stop()
		explodiu = true
		
#função que anima a explosão da pedra
func explodiu():
	$obstaculo.queue_free()
	
	
