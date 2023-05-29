extends Node2D


var explodiu = false

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Telas/Arco2/faseMaceio5.tscn")


func _on_Area2D2_body_entered(body):
	$Timer.start()
	$AnimatedSprite.play("default")
	
func _on_Timer_timeout():
	explodiu()
	$Timer.stop()
	
func explodiu():
	$obstaculo.queue_free()
	
