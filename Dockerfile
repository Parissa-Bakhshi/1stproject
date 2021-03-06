FROM shared:latest

ARG APP_PORT 8000
ENV APP_PORT $APP_PORT

ENV APP_WORKERS 4

EXPOSE $APP_PORT

COPY . .

RUN pip install -r requirements.txt

CMD ./start.sh