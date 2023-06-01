extends Node2D


var telai = preload("res://Telas/Telaini.tscn").instance()

func _ready():
	get_tree().current_scene.add_child(telai)
