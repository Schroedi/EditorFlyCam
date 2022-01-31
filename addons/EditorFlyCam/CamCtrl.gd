tool
extends VBoxContainer

var main_plugin = null
var tracked_cam = null
onready var toggle = $FollowEditor


func _ready() -> void:
	var main_plugins = get_tree().get_nodes_in_group("EditorFlyCamMain")
	if len(main_plugins) < 1:
		printerr("Could not get EditorFlyCamMain plugin")
		return
	main_plugin = main_plugins[0]


func _process(_delta: float) -> void:
	update_cam()
	

func update_cam():
	if not toggle.pressed or null == main_plugin or null == tracked_cam:
		return
	tracked_cam.global_transform = main_plugin._currCam.global_transform


func _on_FollowEditor_toggled(button_pressed: bool) -> void:
	update_cam()
