extends Node2D

#função que inicia quando um corpo entra na area "areaCabana"
func _on_areaCabana_body_entered(body):
	#muda a cena para a cena do pescador
	get_tree().change_scene("res://Telas/Arco1/cenaPescador.tscn")
