class_name EnemyStateBase
extends State
## Use this to extend enemy states.
## Holds all the variables that will be frequently used.

## Base character that we will be updating.
@export var enemy : CharacterBody2D
## The node that we want to target.
@export var target : Node2D
## The state we want to transition to.
@export var transition_state : State

@export_group("Speeds")
## Base speed.
@export var base_speed : float = 100.0


## Direction inputting.
var input_dir := Vector2(0, 0)
## Direction moving.
var move_dir := Vector2(0, 0)
