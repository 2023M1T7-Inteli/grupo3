extends Node2D


var telai = preload("res://Telas/interface.tscn").instance()

func _ready():
	get_tree().current_scene.add_child(telai)
	$cutscene.play("cutscene")

func _on_areaDeColisao_body_entered(body):
	$Mapa/KinematicBody2D.trocarcena()
