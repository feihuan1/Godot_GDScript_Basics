extends Node
# getter and setter allow us add code when variable is changed
# means we can clamp a value within a certian range or emit a signal letting other parts of our code know that the variable changed
# example that is always use this is health

# Called when the node enters the scene tree for the first time. 

signal health_changed(new_health)

var health := 100:
	# set the value of health clamp only between 0 and 100 
	# set function trigger when value changed
	set(value):
		health = clamp(value, 0, 100) 
		# emit signal with new health
		health_changed.emit(health)

# getter is more commonly use to convert values
var chance = 0.2 
# chance_pct is based on chance
var chance_pct:
	get:
		return chance * 100
	set(value): 
		chance = float(value) / 100

func _ready() -> void:
	health = -150 
	print(chance_pct) 
	chance = 0.6 
	print(chance_pct) 
	chance_pct = 40 
	print(chance)




func _on_health_changed(new_health: Variant) -> void:
	print(new_health)
