class_name HitboxComponent
extends Area2D
## [Hitboxcomponent] requires [HealthComponent].
## Attack > [HitboxComponent] > HealthComponent
## @experimental

@export var health_component : HealthComponent

## Pass the [Attack] to the [HealthComponent].
func pass_damage(attack: Attack):
	if health_component:
		health_component.take_damage(attack)
	else:
		push_error("Hitbox disabled. No health component found: " + self.nsme)
