FROM tiangolo/uvicorn-gunicorn-fastapi
ENV CHIFFRE 1
WORKDIR /appliFastApi
COPY requirements.txt /appliFastApi
RUN pip install -r requirements.txt
COPY ./app /appliFastApi/app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0"]
