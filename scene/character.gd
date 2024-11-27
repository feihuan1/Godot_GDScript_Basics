class_name Character
# can duplicate this node and set diferent value in inspector( see charactor 2,3)
extends Node # -> this class(Character) inheritant from Node

@export var pofession: String
@export var health: int
# Called when the node enters the scene tree for the first time.

# instance of inner class
var chest := Equipment.new()
var legs := Equipment.new()

# use inner class instead of dict beening type safe
#inner class 
class Equipment:
	var armor := 10 
	var weight := 5

func _ready() -> void: 
	chest.armor = 20 
	print(chest.armor)
	print(legs.weight)


func die(): 
	health = 0 
	print(pofession + ' died')
