extends Node

# will be adjustable in editor
@export var health = 100 # script wide variable

# variable can not change 
const GRAVITY = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = 120 
	health += 10 
	health -= 30 
	health *= 2 
	health /= 2 
	print(health)  
	
	
# casting int to str
	var number = 3 
	var text = "year of exp: " + str(number) 
	print(text) 
	var num2 = 3.99 
# casting float to int will truncate!!!
	print(int(num2)) 
	
# vectors for positions
	var vec2 = Vector2(1,1)
	var vec3 = Vector3(1,1,1) 
	vec3.x += 1
	print(vec3)
	
#static typing 
	var damage: int = 15 
	var damage2 := 13  
	#damage2 = 'asd' # type error
	print(damage, str(damage2 + 1.1))# can also casting to other type
	
func _input(event): 
#if statement
	if event.is_action_pressed("my_action"): 
		health -= 20  
		var inner_health = 100 # inner scope only
		
		if health <= 0:
			health = 0 
			print('you died') 
		elif health < 50: 
			print('you are injured') 
		else: 
			print('you are healthy')

		print(health) 
