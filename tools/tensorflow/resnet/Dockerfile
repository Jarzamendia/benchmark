FROM tensorflow/serving:nightly

RUN apt update && apt install wget tar -y \
    && wget https://storage.googleapis.com/tfhub-modules/tensorflow/efficientdet/d1/1.tar.gz \
    && mkdir /models/efficientdet && tar -xvf 1.tar.gz -C /models/efficientdet