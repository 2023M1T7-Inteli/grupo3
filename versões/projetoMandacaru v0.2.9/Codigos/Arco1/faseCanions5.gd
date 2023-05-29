extends Node2D

#define qual o endereço da fase para que seja definido o inventário
func _process(delta):
	Global.fase = 5

func _on_Area2D_body_entered(body):
	#cria uma árvore de cenas que muda a cena para a fase final
	get_tree().change_scene("res://Telas/Arco1/faseCanionsFinal.tscn")
	#reinicia a lista global
	Global.lista = []

#função que coleta os itens e coloca no inventário
func _on_AreaItem_body_entered(body):
	if body == $personagemCena/corpoJogador:
		$AreaItem.visible = false
		Global.itens['instrumentos'][0] = true
		Global.get_node("item").play()
