extends Node2D


func _process(delta):
	Global.fase = 7
	
#variável que define se a pedra explodiu
var explodiu = false

#função que muda de fase ao ganhar
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Telas/Arco2/faseMaceio3.tscn")
	
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
	
#define qual o endereço da fase para que seja definido o inventário
func _on_AreaItem_body_entered(body):
	if body == $personagemCena/corpoJogador:
		$AreaItem.visible = false
		Global.itens['roupa'][0] = true
		Global.get_node("item").play()
