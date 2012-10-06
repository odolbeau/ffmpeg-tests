#!/bin/bash

ffmpeg -r 10 -b:v 1800 -i $imgs $generated
