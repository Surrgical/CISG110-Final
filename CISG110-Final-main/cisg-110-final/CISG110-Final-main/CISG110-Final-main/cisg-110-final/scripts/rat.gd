extends RigidBody2D

@export var _speed: float = 50.0
@export var _explosion_VFX: CPUParticles2D
@export var label: Label

func _physics_process(delta: float) -> void:
	linear_velocity.x = -_speed
		
	move_and_collide(linear_velocity * delta)

	max_contacts_reported = 1
	contact_monitor = true


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	print("player hit")
	if body is Player:
		_explosion_VFX.emitting = true
		_explosion_VFX.reparent(get_tree().current_scene)
		
		await get_tree().create_timer(0.5).timeout
		_explosion_VFX.queue_free()
		
		if label:
			label.lose_points()
		
		
		queue_free()
		
	
 # Replace with function body.



	
