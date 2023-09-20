@tool
extends EditorPlugin

var _currCam = null
var _plugin


func _enter_tree() -> void:
	_plugin = preload("res://addons/EditorFlyCam/CamInspector.gd").new()
	add_inspector_plugin(_plugin)
	add_to_group("EditorFlyCamMain")


func _exit_tree() -> void:
	remove_inspector_plugin(_plugin)


func _handles(_o):
	# we want to get the camera so we just handle everything
	return true


func _forward_3d_gui_input(p_camera: Camera3D, p_event: InputEvent) -> int:
	# Maybe there is a better way to get the editor camera?
	if _currCam != p_camera:
		_currCam = p_camera
	return EditorPlugin.AFTER_GUI_INPUT_PASS

