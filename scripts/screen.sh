#!/bin/bash

ffmpeg -f v4l2 -video_size 1920x1080 -i /dev/video0 -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac webcam.mp4
