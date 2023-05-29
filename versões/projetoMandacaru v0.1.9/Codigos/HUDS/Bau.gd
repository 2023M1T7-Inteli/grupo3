extends Node2D

var estado_bau = "fechado"

func _process(_delta):
	for item in Global.itens:
		print(Global.itens[item][0])
		print(Global.itens[item][1])
		if Global.itens[item][0] and !Global.itens[item][1]:
			yield(get_tree().create_timer(0.2), "timeout")
			Global.itens[item][1] = true
			Global.get_node("notificacao").play()
			notif()


func notif():
	pass
	
		
func _on_BauBtn_pressed():
	if estado_bau == "fechado":
		$anim.play("AbreInventario")
		estado_bau = "aberto"
		$BauAbrindo.play()
	else:
		$anim.play("FechaInventario")
		estado_bau = "fechado"
		$BauFechando.play()
