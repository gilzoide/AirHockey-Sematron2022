extends Area2D

const cena_disco = preload("res://Disco/Disco.tscn")
var pontos = 0


func _ready():
	$Placar.text = str(pontos)

func _on_Disco_body_entered(body: PhysicsBody2D):
	pontos = pontos + 1
	$Placar.text = str(pontos)
	
	var mae_disco = body.get_parent()
	body.queue_free()
	var disco = cena_disco.instance()
	disco.global_position = $Position2D.global_position
	yield(get_tree(), "idle_frame")
	mae_disco.add_child(disco)
