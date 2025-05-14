#!/bin/bash

#image maken
docker build -t containergj:dw2 .

#run docker
docker run -dt -p 81:80 --name gertjan containergj:dw2

