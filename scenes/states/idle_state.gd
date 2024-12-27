class_name IdleState extends State


# what happens when we enter the state
func enter() -> void:
	pass

# clean up
func exit() -> void:
	pass

# called every frame during the _process() method
func process(delta: float) -> State:
	return null

# called every phyisics frame during _physics_process() method
func physics_process(delta: float) -> State:
	return null

# called when input events occur	
func unhandled_input(_event: InputEvent) -> State:
	return null
