extends Node2D

#valor inicial de um contador interno
var contador = 0
var contador_dialogo = 0
#define uma validação para iniciar o mecanismo principal da cena
var validacao =  true

var joao = load("res://Imagens/sprite boy grande 3_0.png")
var maria = load("res://Imagens/spriteGirl.png")

var dialogo = ["Olá padre! Estou organizando o festival bumba meu boi, preciso de instrumentos para a banda, você pode me emprestar?", "Padre: Claro! Só preciso de ajuda para organizar a missa, você pode me ajudar?", "Sim, vamos nessa!", "Padre: 50 pessoas virao à missa. Existem 25 fileiras de cadeiras aqui na igreja. Caso todas forem ocupadas igualmente, quantas pessoas sentarao em cada?", "Padre: A Banda da igreja precisa que cada pessoa do coral tenha 2 chocalhos, se existem 33 pessoas no coral, quantos chocalhos sao necessários?", "Padre: Eu gostaria muito de dividir igualmente as velas que eu possuo nos candelabros da igreja. Se existem 7 candelabros que suportam 5 velas, quantas velas eu preciso comprar considerando que possuo 28 velas.", "Padre: Após a missa eu darei pipoca para as pessoas. Cada pacote de pipoca serve até 3 pessoas. Caso as 50 pessoas queiram comer pipoca, quantos pacotes no mínimo eupreciso comprar para que a sobra seja a menor possível?", "Padre: O coral ficará distribuído em 5 fileiras, lembrando que existem 33 pessoas no coral, 4 fileiras ficaram com 7 pessoas e a última ficará com quantas?"]

var resp = ""

#função que inicializa a cena
func _ready():
	#inicia a animação feita na apresentação da cena
	$cenaCatedral.play("cutsceneCatedral")
	yield(get_tree().create_timer(8.2), "timeout")
	$padre.visible = true
	yield(get_tree().create_timer(1.3), "timeout")
	$"diálogo".visible = true
	
	
	
#função que roda a cada frame do jogo
func _process(delta):
	#condição que inicia se a validação de cógido for verdadeira
	if validacao:
		#adiciona o valo 1 ao contador
		contador += 1
		#condição que inicia se o contador exceder 140
		if contador >= 140:
			#esconde a transição de cenas, para que os controles não sejam afetados
			$transicao/animacaoTransicao/fundo.hide()
			#retorna para falsa a variável validação
			validacao = false
			#reinicia o contador para 0
			contador = 0 
	$"diálogo/caixaDialogo".text = dialogo[contador_dialogo]
	if contador_dialogo == 1:
		$"diálogo/Light2D".visible = false
		$"diálogo/Light2D2".visible = true
	elif contador_dialogo == 0:
		$"diálogo/Light2D".visible = true
		$"diálogo/Light2D2".visible = false
	elif contador_dialogo == 2:
		$"diálogo/Light2D".visible = true
		$"diálogo/Light2D2".visible = false
	$resposta.text = resp

func _on_botaoPassar_pressed():
	if contador_dialogo < 2:
		contador_dialogo += 1
	elif contador_dialogo == 2:
		contador_dialogo += 1
		$"diálogo/botaoPassar".visible = false
		$"diálogo/Light2D".visible = false
		$"diálogo/Light2D2".visible = false
		$teclado.visible = true
		$resposta.visible = true

func _on_enviarBtn_pressed():
	if contador_dialogo == 3 and $resposta.text == "2":
		contador_dialogo += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador_dialogo == 4 and $resposta.text == "66":
		contador_dialogo += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador_dialogo == 5 and $resposta.text == "7":
		contador_dialogo += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador_dialogo == 6 and $resposta.text == "17":
		contador_dialogo += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador_dialogo == 7 and $resposta.text == "5":
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
		get_tree().change_scene("res://Telas/Arco2/cenaFestival.tscn")
	else:
		resp = "Tente novamente!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""

#Botões que, ao clicar, adicionam o número contido no botão na resposta do usuário.
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
