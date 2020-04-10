FROM python:3.7
COPY . /app
WORKDIR /app
COPY requirements.txt /
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
EXPOSE 5005
ENTRYPOINT ["python"]
CMD ["app.py"]
