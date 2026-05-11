extends RigidBody2D

@export var _speed: float = 50.0
@export var _explosion_VFX: CPUParticles2D

func _physics_process(delta: float) -> void:
	linear_velocity.x = -_speed
		
	move_and_collide(linear_velocity * delta)

	max_contacts_reported = 1
	contact_monitor = true


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	print("player hit")
	if body is Player:
		_explosion_VFX.emitting = true
		_explosion_VFX.reparent(get_parent())
		
		
		queue_free()
		
	
 # Replace with function body.



	
