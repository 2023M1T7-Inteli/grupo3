extends Control
#página de variáveis globais

#variável que retorna uma booleana para o início ou não do jogo
var iniciou = false
#variável que cria uma array vazia para implementação dos movimentos do personagem
var lista = []
#variável que acumula um valor para o contador que localizará valores na array "lista"
var contador = 0
#define a variável zerar para a lista como false
var zerar =  false

var notif

var tutorialInicioCont = 0

var itens = {"pipoca": [false, false],
"baloes": [false, false],
"instrumentos": [false, false],
"roupa": [false, false],
"fitas": [false, false]}

var personagem

func _ready():
	$musicaFundo.play()

func volume(song):
	var music = get_node(song)
	while music.volume_db > -80:
		music.volume_db -= 1
		yield(get_tree().create_timer(0.065), "timeout")
