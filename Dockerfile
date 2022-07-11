FROM python:3.9

RUN mkdir /app
WORKDIR /app

COPY src/pyworld.py .
COPY src/resources/requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 3000

CMD [ "python", "pyworld.py" ]