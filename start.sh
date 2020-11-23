#!/bin/sh

PWD=$( ./start.py $1 )
echo $PWD >> /root/.jupyter/jupyter_notebook_config.py 

jupyter notebook --allow-root
