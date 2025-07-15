extends Node

## How much does the attack deal damage?
@export var attack_damage : int = 1
## How far are we knocked back from the attack?
@export var knockback_force : float = 100.0
## How long are we stunned for, after the attack hits us?
@export var stun_time : float = 1.5

## Create the [Attack] and pass it to [HitboxComponent].
func damage(area: Node2D) -> void:
	if area is HitboxComponent:
		var hitbox : HitboxComponent = area

		var attack = Attack.new()
		attack.damage = attack_damage
		attack.knockback_force = knockback_force
		attack.stun_time = stun_time

		hitbox.pass_damage(attack)
