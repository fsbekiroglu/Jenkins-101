FROM python:3.12-slim

WORKDIR /usr/src/app
COPY myapp/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY myapp/hello.py .

CMD ["python", "hello.py"]