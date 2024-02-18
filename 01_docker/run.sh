#/bin/bash

docker run -it \
  --mount type=bind,source=/home,target=/home/ \
  --shm-size=512m \
  temalab/01_docker