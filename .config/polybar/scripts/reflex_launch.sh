#!/bin/bash

gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -hide_banner -loglevel error -nostats -threads 0 -f v4l2 /dev/video7
