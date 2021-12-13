#!/usr/bin/env bash

set -e

#docker build -t wn1980/raspap .

docker rm -f raspap

docker run --name raspap -it -d \
    --privileged \
    --network=host \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    --cap-add SYS_ADMIN \
    wn1980/raspap

#docker exec -it raspap bash
#$ ./setup.sh
#docker restart raspap
#access WEB-UI at http://localhost
