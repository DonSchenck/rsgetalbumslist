FROM registry.access.redhat.com/ubi8/python-39
COPY . /opt/app-root/src
RUN pip3 install flask
RUN pip3 install mariadb
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]