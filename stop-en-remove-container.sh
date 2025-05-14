#!/bin/bash

#stop container
docker container stop gertjan

# remove container
docker container rm gertjan

#remove image
docker image rm containergj:dw2

