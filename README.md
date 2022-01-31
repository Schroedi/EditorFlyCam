# Godot Editor Fly Cam

Godot editor add-on that enhances the 3D camera handling.

- Align cameras with the current editor view (inspired by the pilot camera function from Unreal Engine)
- Show a preview of the selectedt camera in the inspector

Made for the [Godot Addon Jam](https://itch.io/jam/godot-addons-jam-1). [Itch page](https://itch.io/jam/godot-addons-jam-1/rate/1379019)


# Installation
- Copy `addons/EditorFlyCam` into your project (final path should be `res://addons/EditorFlyCam`).
- In the Godot Editor, go to **Project Settings > Plugins** and enable the **EditorFlyCam** plugin.


# Usage
Select a 3D camera. In the inspector a new window will show the camera's view.

To pilot a camara, enable the **Follow Editor Camera** toggle. The selected camera will automatically follow the godot camera. Fly around with the editor camre until you are satisfied with the position. Then disable the follow toggle.

# TODO
- Add support for lights
- Maybe other nodes?

# License
See [License file](./LICENSE)
