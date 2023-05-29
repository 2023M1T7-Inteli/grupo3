extends Node2D

func _on_Area2D_body_entered(body):
	#cria uma árvore de cenas que muda a cena para a fase final
	get_tree().change_scene("res://Telas/Arco1/faseCanionsFinal.tscn")
	#reinicia a lista global
	Global.lista = []
