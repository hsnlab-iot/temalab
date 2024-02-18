#/bin/bash

# Start the container
docker run --rm \
--gpus all \
-p 6080:80 \
-p 50001:50001 \
-p 50002:50002 \
-p 50003:50003 \
-p 29999:29999 \
-e RESOLUTION=1920x1080 \
--privileged \
-v /dev/shm:/dev/shm \
-e DISPLAY=:1.0 \
ros2_realsense2