mbentley/fsv
============

docker image for fsv ([file system visualizer](https://github.com/mcuelenaere/fsv)) using Ubuntu 12.04

To pull this image: `docker pull mbentley/fsv`

On macOS, you need to run XQuartz and use `socat` to make the X11 display available over TCP on the network:
```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

Make sure to stop `socat` (ctrl+c) when you're finished running fsv. Thanks to slobo for his [comment](https://github.com/docker/docker/issues/8710#issuecomment-71113263) on how to do this.

Running fsv on macOS (inserting your IP):
```
docker run -it --rm -e DISPLAY=<ip-of-your-machine>:0 mbentley/fsv
```

Running fsv directly in X11:
```
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mbentley/fsv
```

---

Note: If you're running a newer version of XQuartz, you may need to run this to allow rendering to function and restart XQuartz:

```
defaults write org.macosforge.xquartz.X11 enable_iglx -bool true
```
