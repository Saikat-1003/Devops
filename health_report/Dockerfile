FROM alpine:latest

RUN apk add --no-cache bash procps

WORKDIR /app

COPY health_check.sh .

RUN chmod +x health_check.sh

CMD ["./health_check.sh"]
