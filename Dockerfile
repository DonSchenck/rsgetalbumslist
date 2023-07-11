FROM registry.access.redhat.com/ubi8/python-39
COPY . /opt/app-root/src
ENV LD_PRELOAD=/usr/lib/mariadb/libmariadb.so
RUN pip3 install flask
RUN pip3 install -v "mariadb==1.0.5"
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]