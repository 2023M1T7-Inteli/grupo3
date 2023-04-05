extends Node2D

#função que roda junto à atualização de frames
func _process(delta):
	Global.fase = 0
	
#função que coleta os itens e coloca no inventário
func _on_Area2D_body_entered(body):
	#cria uma árvore de cenas que muda a cena para a fase final
	get_tree().change_scene("res://Telas/Arco1/faseCanions3.tscn")
	#reinicia a lista global
	Global.lista = []
