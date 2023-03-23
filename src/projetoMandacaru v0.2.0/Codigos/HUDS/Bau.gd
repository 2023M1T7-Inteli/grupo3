extends Node2D

var estado_bau = "fechado"

func _ready():
	$Notif.visible = false
	print('a')
	if Global.notif != null:
		if Global.notif == "pipoca":
			$Notif/ItemConquistado.text = "Pipoca"
		elif Global.notif == "baloes":
			$Notif/ItemConquistado.text = "Baloes"
		elif Global.notif == "instrumentos":
			$Notif/ItemConquistado.text = "Instrumentos"
		elif Global.notif == "roupa":
			$Notif/ItemConquistado.text = "Roupa"
		elif Global.notif == "fitas":
			$Notif/ItemConquistado.text = "Fitas"
		$Notif.visible = true
		print(Global.notif)
	for item in Global.itens:
		if Global.itens[item][1]:
			if item == "pipoca":
				$Inventario.texture = preload("res://Imagens/Inventario1.jpg")
			elif item == "baloes":
				$Inventario.texture = preload("res://Imagens/Inventario2.jpg")
			elif item == "instrumentos":
				$Inventario.texture = preload("res://Imagens/Inventario3.jpg")
			elif item == "roupa":
				$Inventario.scale = Vector2(0.675, 0.675)
				$Inventario.texture = preload("res://Imagens/inventario4.jpg")
			elif item == "fitas":
				$Inventario.texture = preload("res://Imagens/inventario5.jpg")
				

func _process(_delta):
	for item in Global.itens:
		if Global.itens[item][0] and !Global.itens[item][1]:
			Global.itens[item][1] = true
			yield(get_tree().create_timer(0.2), "timeout")
			if item == "pipoca":
				$Notif/ItemConquistado.text = "Pipoca"
				$Inventario.texture = preload("res://Imagens/Inventario1.jpg")
				if estado_bau == "fechado":
					Global.notif = "pipoca"
			elif item == "baloes":
				$Inventario.texture = preload("res://Imagens/Inventario2.jpg")
				$Notif/ItemConquistado.text = "Baloes"
				if estado_bau == "fechado":
					Global.notif = "baloes"
			elif item == "instrumentos":
				$Inventario.texture = preload("res://Imagens/Inventario3.jpg")
				$Notif/ItemConquistado.text = "Instrumentos"
				if estado_bau == "fechado":
					Global.notif = "instrumentos"
			elif item == "roupa":
				$Inventario.scale = Vector2(0.675, 0.675)
				$Inventario.texture = preload("res://Imagens/inventario4.jpg")
				$Notif/ItemConquistado.text = "Roupa"
				if estado_bau == "fechado":
					Global.notif = "roupa"
			elif item == "fitas":
				$Inventario.texture = preload("res://Imagens/inventario5.jpg")
				$Notif/ItemConquistado.text = "Fitas"
				if estado_bau == "fechado":
					Global.notif = "fitas"
			if estado_bau == "fechado":
				Global.get_node("notificacao").play()
				$Notif.visible = true
	
		
func _on_BauBtn_pressed():
	if estado_bau == "fechado":
		$anim.play("AbreInventario")
		estado_bau = "aberto"
		$Notif.visible = false
		Global.notif = null
		$BauAbrindo.play()
	else:
		$anim.play("FechaInventario")
		estado_bau = "fechado"
		$BauFechando.play()
