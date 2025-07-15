class_name EnemyStateIdle
extends EnemyStateBase


## Distance the target has to be in so we transition to a different state.
@export var transition_distance : float = 60.0

## Minimum time wandering around.
@export_range(0.0, 10, 0.1) var min_wander : float = 0.0
## Maximum time wandering around.
@export_range(0.0, 10, 0.1) var max_wander : float = 3.0
var wander_time : float = 0.0


func randomize_wander() -> void:
	input_dir = Vector2(randf_range(-1, 1), randf_range(-1, 1))
	wander_time = randf_range(min_wander, max_wander)


func _state_enter() -> void:
	randomize_wander()


func _state_update(delta: float) -> void:
	if wander_time > 0:
		wander_time -= delta
	else:
		randomize_wander()

	var dir = target.global_position - enemy.global_position
	
	if dir.length() < transition_distance:
		_state_transition_to(transition_state)


func _state_physics_update(delta: float) -> void:
	if not enemy:
		return

	move_dir = input_dir * base_speed
	enemy.velocity = move_dir
