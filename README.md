# jupyter

This builds a docker image to run a jupyter notebook

Use the docker build argument to set the default password for the server

A sample run command is to set the port and directory to use for the notebooks

```docker run --rm -p 9999:8888 -v /home/docker/notebooks:/notebooks rcorbish/notebooks```

9999 is the public port that maps the local 8888 
/home/docker/notebooks is the server location on where notebooks are saved (so we can store notebooks between runs)

Edit the dockefile to add in any python packages you need


