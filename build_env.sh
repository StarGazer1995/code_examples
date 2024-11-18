#!/bin/bash
image_version=${1:-23.08-py3}
docker build -t gongzhao1995/tensorrt/${image_version}
