extends Control

#função ativada quando o botão "botaoVoltar" for pressionado
func _on_botaoVoltar_pressed():
	#muda a cena para a cena "telaInicial"
	get_tree().change_scene("res://Telas/telaInicial.tscn")
