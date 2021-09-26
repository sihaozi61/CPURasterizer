#!/bin/sh

green='\033[1;32m'
nc='\033[0m'

root_path=$(dirname "${0}")
root_path=$(realpath "${root_path}")

if [ ! -d Build ]; then
	git clone https://github.com/Microsoft/vcpkg.git vcpkg
	cd vcpkg
	git checkout 2021.05.12
	./bootstrap-vcpkg.sh

	./vcpkg install \
		glad:x64-linux \
		glfw3:x64-linux \
		glm:x64-linux \
		imgui:x64-linux \
		stb:x64-linux \
		tinyobjloader:x64-linux
	
	cd ../
fi

cd Rasterizer/Assets

if [ ! -d PBRScenes ]; then
  git clone https://github.com/Zielon/PBRScenes
fi

cd ../..