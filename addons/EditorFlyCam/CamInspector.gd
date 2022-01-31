extends EditorInspectorPlugin 

const CamPanel = preload("res://addons/EditorFlyCam/CamView.tscn")
const CamCtrlPanel = preload("res://addons/EditorFlyCam/CamCtrl.tscn")

var cam_panel_instance
var ctrl_panel_instance


func can_handle(object):
	return object is Path or object is Camera


## Add the custom draw
func parse_property(object, type, path, hint, hint_text, usage):
	# Place as first element
	if path == "keep_aspect":
		cam_panel_instance = CamPanel.instance()
		add_custom_control(cam_panel_instance)
		cam_panel_instance.get_node("CamView").tracked_cam = weakref(object)
		
		# Follow toggle
		ctrl_panel_instance = CamCtrlPanel.instance()
		add_custom_control(ctrl_panel_instance)
		ctrl_panel_instance.tracked_cam = object
	return false
