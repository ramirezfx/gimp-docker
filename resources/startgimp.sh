HOME="$(echo ~)"
mkdir -p ${HOME}/docker/gimp-home
xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/docker/gimp-home:/home/gimp \
    --workdir ${HOME} \
    -e DISPLAY=$DISPLAY \
    -e HOME=${HOME} \
    -e USER=${USER} \
    -e USERID=${UID} \
    ramirezfx/gimp:latest
