FROM python:3.9

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
COPY . /app

ENV AWS_ACCESS_KEY_ID="AKIAIOSFODNN7EXAMPLE1"
ENV AWS_SECRET_ACCESS_KEY="$ export wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
ENTRYPOINT [ "uvicorn" ]
CMD [ "main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "80" ]
