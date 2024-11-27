extends Node

# easy to check and switch state
enum Alignment {
	ALLY,
	NEUTRAL,
	ENEMY
}

# enum can customize index!!
#enum Alignment {
	#ALLY = 1,
	#NEUTRAL = 0,
	#ENEMY = -1
#}

# enum is bounch of constant with increasing value 
# behind scene here , kinda like index
# const ALLY = 0
# const NEUTRAL = 1
# const ENEMY = 2

var unit_alignment = Alignment.ALLY 

# can use as export to switch state in inspector 
@export var player_alignment: Alignment

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Alignment.ENEMY)# show index of 2
	if unit_alignment == Alignment.ENEMY: 
		print("you are not welcome here") 
	else:
		print("Welcome!")
# match is switch statement 
	match player_alignment:
		Alignment.ALLY:
			print("Hi, My friend")
		Alignment.NEUTRAL:
			print("Peace")
		Alignment.ENEMY:
			print("Taste my wrath!") 
		_: 
			print('Who are you?')
