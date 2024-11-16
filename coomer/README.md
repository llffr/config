# Coomer
# This is an reimplementation of [Boomer](https://github.com/tsoding/boomer) in C++.
# Dependencies
sudo apt-get install build-essential libgl1-mesa-dev libx11-dev libxext-dev libxrandr-dev libglu1-mesa-dev freeglut3-dev
## Build
g++ coomer.cpp -lGL -lGLU -lX11 -lXrandr -lXext -o coomer

Control 	Description
0 	Reset the application state (position, scale, velocity, etc).
q or ESC 	Quit the application.
r 	Reload configuration.
Ctrl + r 	Reload the shaders (only for Developer mode)
f 	Toggle flashlight effect.
Drag with left mouse button 	Move the image around.
Scroll wheel or =/- 	Zoom in/out.
Ctrl + Scroll wheel 	Change the radious of the flaslight.
