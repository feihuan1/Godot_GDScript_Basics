extends Node

# this custom signal will show up in main node signal section
signal leveled_up(msg)# print out msg

var xp := 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# connect signal via code instead use inspector
	leveled_up.connect(_on_leveled_up)
	# disconnect signal via code
	#leveled_up.disconnect(_on_leveled_up)


# select inspector switch to node and connect with main node create this function
# green button on left can show the source of connection
func _on_button_pressed() -> void:
	print('clicked')

# emits a signal when time out -> auto start enables in inspector
# one shot not enabled, signals will emit every 1s
func _on_timer_timeout() -> void:
	xp += 5 
	print(xp) 
	if xp >= 20: 
		xp = 0 
		# emit custom signal when xp reach 20
		leveled_up.emit("HAHAHA") # print out msg


func _on_leveled_up(msg) -> void:
	print(msg) # print out message instead hard code str
