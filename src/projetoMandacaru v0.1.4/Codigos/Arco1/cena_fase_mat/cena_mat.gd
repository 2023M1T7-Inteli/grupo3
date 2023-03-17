extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Pintor: Aqui estão minhas tintas. Para o controle de gastos eu costumo anotar as quantidades de latas de tintas que eu possuo.", "Pintor: Quantas latas roxas e verdes eu possuo?", "Pintor: Quantos potes de tinta tem na minha estante?", "Pintor: Considerando todas as latas, caso eu utilize 6 delas, quantas sobram?", "Pintor: Quantas latas de tinta amarela, verde e azul claro existem na estante?", "Pintor: Minha amiga pediu 3 latas de tinta rosa, 1 lata de tinta laranja e 2 latas de tinta verde. Quantas latas sobrarão?", "Pintor: Quantas latas de tinta existem em cada prateleira?", "Pintor: Se na minha prateleira tem 18 potes de tintas, quantas tintas tem na metade dela?", "Pintor: Voce é muito bom em matemática, parabéns! Aqui está o quadro como prometido. Obrigado!"]

var resp = ""

#função que roda a cada atualização da tela
func _process(_delta):
	#define o texto que aparecerá na caixa de diálogo
	$caixaDialogo.text = dialogo[contador]
	$Resposta.text = resp
	
	if contador == 8:
		$pelicula2.visible = true
		$quadroCanions.visible = true
		$NumericKeyboard.visible = false
		$Resposta.visible = false
		$Delet.visible = false
		$enviar.visible = false
		$botaoPassar.visible = true
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	if contador == 8:
		get_tree().change_scene("res://Telas/Arco2/faseMaceio.tscn")
	else:
		contador += 1
		$botaoPassar.visible = false


func _on_enviarBtn_pressed():
	if contador == 1 and $Resposta.text == "6":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 2 and $Resposta.text == "18":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 3 and $Resposta.text == "12":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 4 and $Resposta.text == "9":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 5 and $Resposta.text == "12":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 6 and $Resposta.text == "3":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 7 and $Resposta.text == "9":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 1 and $Resposta.text == "1115":
		contador = 7
	else:
		resp = "Tente novamente!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""

func _on_Button0_pressed():
	resp += "0"

func _on_Button1_pressed():
	resp += "1"

func _on_Button2_pressed():
	resp += "2"

func _on_Button3_pressed():
	resp += "3"
	
func _on_Button4_pressed():
	resp += "4"

func _on_Button5_pressed():
	resp += "5"

func _on_Button6_pressed():
	resp += "6"

func _on_Button7_pressed():
	resp += "7"

func _on_Button8_pressed():
	resp += "8"

func _on_Button9_pressed():
	resp += "9"

func _on_deletBtn_pressed():
	resp.erase(resp.length() - 1, 1)
