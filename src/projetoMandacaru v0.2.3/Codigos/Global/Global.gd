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
#variável responsável por manter o controle do bau entre cenas
var bauAberto = false

# Variável que consta o último item pego pelo usuário caso ele não tenha visto o item dentro do baú. Usada para ativar a notificação do item.
var notif

# Variável para cada "diálogo" do tutorial inicial.
var tutorialInicioCont = 0

# Dicionário constando os itens do jogo, se foi pego e se já foi usado para ativar, dentro do código, a notificação.
var itens = {"pipoca": [false, false],
"baloes": [false, false],
"instrumentos": [false, false],
"roupa": [false, false],
"fitas": [false, false]}

# Variável que define qual personagem foi escolhido pelo usuário.
var personagem

# Função ready que reproduz a música do inicio do jogo.
func _ready():
	$musicaFundo.play()

# Função que abaixa a intensidade do jogo gradativamente.
func volume(song):
	var music = get_node(song)
	while music.volume_db > -80:
		music.volume_db -= 1
		yield(get_tree().create_timer(0.065), "timeout")
