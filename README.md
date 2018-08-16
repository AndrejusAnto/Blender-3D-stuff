# Blender-3D-stuff
This script will install needed dependecies for Blender (command line) and downloads Blender (standalone) to work in Docker container (only for Linux, Ubuntu based distros) and runs python script with blender if .blend and .py files provided. You have to have installed Docker https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1 and run in terminal something like "docker run -it --rm -v "$(pwd)":/"dirlocation" --name blender ubuntu /bin/bash".

--rm info here https://docs.docker.com/engine/reference/commandline/rm/

-v "$(pwd)":/"dirlocation" info here https://www.youtube.com/watch?v=MdRWkqcbLJI

--name info here https://blog.codeship.com/the-basics-of-the-docker-run-command/

and when set up, 

install git "apt-get update && apt-get install git",

then git clone https://github.com/Orasporas/Blender-3D-stuff.git (or with ssh), 

then "cd Blender-3D-stuff" 

and run ". blenderdocker.sh".

Then just follow instructions.

# /dirlocation/Desktop/bathrender.blend
# /dirlocation/Desktop/anglerender.py
