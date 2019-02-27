#!/bin/bash


# docker run --name drl_ho -it --rm -p 8888:8888 -p 6006:6006 -v "$(pwd)":/notebooks drl_deb:auto /bin/bash
docker run --name santander_int -it --rm -v "$(pwd)":/notebooks kaggle_competitions:auto /bin/bash
