from debian:10.4-slim

ARG password=monkeys

ADD start.py /tmp/
ADD jupyter_notebook_config.py /root/.jupyter/

RUN apt-get -y update && \
    apt-get -y install python3-pip && \
    pip3 install notebook && \
    pip3 install matplotlib && \
    pip3 install pandas && \
    pip3 install scikit-learn && \
    pip3 install torch==1.7.0+cpu \
                 torchvision==0.8.1+cpu \
                 torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html  &&  \
    mkdir -p /root/.jupyter/ && \
    PWD=$( /tmp/start.py ${password} ) && \
    echo  c.NotebookApp.password=\"${PWD}\" >> /root/.jupyter/jupyter_notebook_config.py 

# ENTRYPOINT jupyter notebook 
