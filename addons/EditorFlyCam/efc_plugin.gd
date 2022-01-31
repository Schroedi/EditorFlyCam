tool
extends EditorPlugin

var _currCam = null
var _plugin

func _enter_tree() -> void:
	print("FlyCam plugin Enter tree")
	_plugin = preload("res://addons/EditorFlyCam/CamInspector.gd").new()
	add_inspector_plugin(_plugin)
	add_to_group("EditorFlyCamMain")


func _exit_tree() -> void:
	print("FlyCam plugin Exit tree")
	remove_inspector_plugin(_plugin)


func handles(_o):
	# we want to get the camera so we just handle everything
	return true


func forward_spatial_gui_input(p_camera: Camera, p_event: InputEvent) -> bool:
	# Maybe there is a better way to get the editor camera?
	if _currCam != p_camera:
		_currCam = p_camera
	return false
