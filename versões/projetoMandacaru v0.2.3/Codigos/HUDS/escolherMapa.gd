extends Control


func _ready():
	$botaoMaceio.visible = false
	
func _process(delta):
	if Global.canionsDouradosfez:
		$botaoMaceio.visible = true
		
func _on_botaoCanions_pressed():
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")
	
	
func _on_botaoMaceio_pressed():
	get_tree().change_scene("res://Telas/Arco2/faseMaceio1.tscn")
