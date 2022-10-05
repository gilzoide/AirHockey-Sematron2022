extends KinematicBody2D

var movendo = false
var posicao_toque = Vector2.ZERO
var indice_toque = 0


func _physics_process(delta):
	if not movendo:
		return
	
	var vetor = posicao_toque - position
	move_and_slide(vetor / delta)


func _input(event):
	if not movendo:
		return
	
	if event is InputEventScreenDrag and event.index == indice_toque:
		posicao_toque = event.position
	elif event is InputEventScreenTouch and event.index == indice_toque and not event.pressed:
		movendo = false


func _on_Taco_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch and event.pressed:
		movendo = true
		indice_toque = event.index
		posicao_toque = event.position
