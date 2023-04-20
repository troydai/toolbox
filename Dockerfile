FROM fullstorydev/grpcurl AS grpcurl
FROM alpine

RUN apk add curl

COPY --from=grpcurl /bin/grpcurl /bin/grpcurl


ENTRYPOINT ["tail", "-f", "/dev/null"]

