#!/bin/bash


docker run --name santander -it --rm -p 8888:8888 -p 6006:6006 -v "$(pwd)":/notebooks kaggle_competitions:auto
