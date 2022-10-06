extends RigidBody2D

export(int, LAYERS_2D_PHYSICS) var layer_parede
export(int, LAYERS_2D_PHYSICS) var layer_taco
export(AudioStreamSample) var audio_parede
export(AudioStreamSample) var audio_taco


func _colidiu(body: PhysicsBody2D):
	if body.collision_layer & layer_parede:
		$AudioStreamPlayer2D.stream = audio_parede
		$AudioStreamPlayer2D.play()
	if body.collision_layer & layer_taco:
		$AudioStreamPlayer2D.stream = audio_taco
		$AudioStreamPlayer2D.play()
