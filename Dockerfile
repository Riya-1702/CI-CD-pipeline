FROM redhat/ubi8

RUN yum install -y python3 python3-pip && \
    pip3 install flask && \
    yum clean all

WORKDIR /app
COPY app.py .

EXPOSE 7860

CMD ["python3", "app.py"]
