mbentley/fsv
============

docker image for fsv ([file system visualizer](https://github.com/mcuelenaere/fsv)) using Ubuntu 12.04

To pull this image: `docker pull mbentley/fsv`

On OS X, you need to run XQuartz and use `socat` to make the X11 display available on the network: `socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`

Thanks to slobo for his [comment](https://github.com/docker/docker/issues/8710#issuecomment-71113263) on how to do this!

Running fsv on OS X: `docker run -it -e DISPLAY=<ip-of-your-box>:0 mbentley/fsv`

Running fsv in X11: `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mbentley/fsv`
