class_name EnemyStateFlee
extends EnemyStateBase


## Distance to transition.
@export var stop_following_dst : float = 100.0


## Distance to stop following.
@export var stop_follow_dst : float = 25.0


func _state_physics_update(delta: float) -> void:
	var dir = enemy.global_position - target.global_position

	# If its outside desired distance, stop
	if dir.length() > stop_follow_dst:
		enemy.velocity = dir.normalized() * base_speed

	if dir.length() > stop_following_dst:
		_state_transition_to(transition_state)
