class_name HealthComponent
extends Node
## Health component used for composing basic things.
## Attack > HitboxComponent > [HealthComponent]
## @experimental

## Emits when health gets changed. TODO
signal health_changed
## Emits when taking damage.
signal took_damage
## Emits when dead.
signal has_died

## Desired max health.
@export var max_health : int = 10

## Current health.
var health : int

func _ready() -> void:
	health = max_health

## Decrease health, check if we are dead, and continue with logic.
func take_damage(attack: Attack) -> void:
	health -= attack.damage

	if health <= 0:
		has_died.emit()

	took_damage.emit()
	attack.custom_functions()
