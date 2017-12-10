FROM gcr.io/tensorflow/tensorflow:latest-gpu

RUN pip --no-cache-dir install \
        flask \
        keras

COPY server.py /notebooks/
COPY start.sh /notebooks/

# API Server
EXPOSE 8080

WORKDIR "/notebooks"
CMD sh start.sh
