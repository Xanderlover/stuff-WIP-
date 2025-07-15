class_name Attack
extends Node
## Attack inheritance, used as a simple blueprint for our attack.
## [Attack] > HitboxComponent > HealthComponent
## @experimental


## How much does the attack deal damage?
@export var attack_damage : int = 1
## How far are we knocked back from the attack?
@export var knockback_force : float = 100.0
## How long are we stunned for, after the attack hits us?
@export var stun_time : float = 1.5
## The position of the attacker. WARNING TODO
var attack_position := Vector2(0, 0)


## Custom function that prints the properties of the [Attack]
func custom_functions() -> void:
	print("The attack is: " + str(attack_damage) + " dmg!")
