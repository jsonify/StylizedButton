extends Panel

# these are needed to be able to access their properties in a moment
@onready var label = $Label
@onready var toggle_tree = $CheckButton/ToggleTree


func _ready():
	# connecting these signals will give us the power to know when the toggle has happened
	toggle_tree.toggled_on.connect(_on_toggled_on)
	toggle_tree.toggled_off.connect(_on_toggled_off)

# this is for when it's on
func _on_toggled_on():
	# let's just do something simple here
	label.text = "Magic"
	
# and this is for when it's off
func _on_toggled_off():
	label.text = "No Magic"
	
