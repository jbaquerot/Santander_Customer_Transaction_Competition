#!/usr/bin/env bash

# run tensorboard

tensorboard --logdir /notebooks/logs --host 0.0.0.0 &

jupyter notebook --allow-root --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks

#/usr/bin/xvfb-run -s "-screen 0 1280x720x24" /usr/local/bin/jupyter-notebook --no-browser --ip=0.0.0.0 --notebook-dir=/notebook

#/usr/bin/xvfb-run -s "-screen 0 1280x720x24" jupyter notebook --allow-root --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks

#/usr/bin/xvfb-run -s "-screen 0 1280x720x24" jupyter notebook "$@"
