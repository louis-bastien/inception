FROM alpine:3.19

RUN apk add go

RUN go install github.com/mailhog/MailHog@latest

ENTRYPOINT ["/root/go/bin/MailHog"]