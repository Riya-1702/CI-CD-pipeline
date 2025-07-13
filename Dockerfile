FROM ubuntu:22.04
RUN apt-get install -y python3 python3-pip && \
    pip3 install flask && \
    yum clean all

WORKDIR /app
COPY app.py .

EXPOSE 7860

CMD ["python3", "app.py"]
