FROM nvidia/cuda:9.1-cudnn7-runtime-ubuntu16.04
# Set anaconda path
ENV ANACONDA /opt/anaconda
ENV PATH $ANACONDA/bin:$PATH
RUN apt-get update && apt-get install -y --no-install-recommends \
         wget \
 