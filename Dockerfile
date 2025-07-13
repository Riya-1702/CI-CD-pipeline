FROM redhat/ubi8
RUN yum install python3 python3-pip -y
RUN pip install flask
COPY app.py /app.py
CMD ["python3", "/app.py"]
