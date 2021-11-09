#!/bin/bash
docker run --gpus all -it -p 8888:8888 -v "$PWD:/src" transformers