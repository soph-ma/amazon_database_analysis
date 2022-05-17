FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update && apt-get install -y git
RUN /usr/bin/python3 -m pip install --upgrade pip

RUN mkdir -p /tf
WORKDIR /tf
ENV PYTHONPATH "${PYTHONPATH}:/tf"

RUN pip install nltk
RUN pip install keras
RUN pip install sklearn
RUN pip install gensim
