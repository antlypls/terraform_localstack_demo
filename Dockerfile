FROM hashicorp/terraform:latest

RUN apk add --no-cache aws-cli

ENTRYPOINT ["sh"]
