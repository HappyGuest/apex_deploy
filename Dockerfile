FROM alpine:3.8
LABEL description="Apex image to autome deployment for AWS Lambdas"
RUN apk add nodejs-current
RUN apk add --no-cache curl
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh
RUN apex upgrade