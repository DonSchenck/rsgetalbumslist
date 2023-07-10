FROM registry.access.redhat.com/ubi8/python-39:1-126
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python","app.py"]