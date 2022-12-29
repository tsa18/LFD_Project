#!/bin/bash
ffmpeg -i $VIDEO_NAME  -f image2 ./test_videos/extracted_images/%05d.png 
python detect.py --source ./test_videos/extracted_images  --weights ./weights/helmet_head_person_s.pt 
ffmpeg -r 30 -f image2 -i ./inference/output/%05d.png output.mp4
