FROM python
WORKDIR /app
COPY . /app
RUN pip install flask
RUN pip install mariadb
EXPOSE 8080
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]