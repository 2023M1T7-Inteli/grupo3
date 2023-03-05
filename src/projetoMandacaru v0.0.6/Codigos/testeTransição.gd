extends Node2D

var terminou = false

func _ready():
	$AnimationPlayer.play("tittle")
	
func _process(delta):
	$Sprite.position.x += 50
	$Sprite2.position.x += 50
	if $Sprite.position.x >= 1920+1920/2:
		$Sprite.position.x = -1920/2
	if $Sprite2.position.x >= 1920+1920/2:
		$Sprite2.position.x = -1920/2

func _on_AnimationPlayer_animation_finished(anim_name):
	terminou = true
