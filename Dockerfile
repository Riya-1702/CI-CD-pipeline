FROM ubuntu:22.04
RUN apt-get install -y python3 pip && \
    pip install flask && \
    yum clean all

WORKDIR /app
COPY app.py .

EXPOSE 7860

CMD ["python3", "app.py"]
