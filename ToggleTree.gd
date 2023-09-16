extends AnimationTree

signal toggled_on
signal toggled_off

# since currently the script is attached to the AnimationTree itself, 
# we can just reference "self" 

@onready var animation_tree = self

func _ready():
	# we have to turn the AnimationTree on, since its disabled by default
	active = true
	# and since we will want the toggle to be off by default
#	animation_tree["parameters/playback"].start("ToggleOn")

func _on_check_button_toggled(button_pressed):
	# since the button will be true or false, toggleOn or toggleOff
	if button_pressed:
		# in order to get the parameter, it's an indexed array, so that's
		# how we have have to access the different states 
		animation_tree["parameters/playback"].start("ToggleOn")
		emit_signal("toggled_on")
		# more code would go here to do something
	else:
		animation_tree["parameters/playback"].travel("ToggleOff")
		emit_signal("toggled_off")
