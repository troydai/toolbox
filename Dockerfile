FROM fullstorydev/grpcurl AS grpcurl
FROM alpine

RUN apk add --no-cache curl jq bind-tools tcpdump

COPY --from=grpcurl /bin/grpcurl /bin/grpcurl

ENTRYPOINT ["tail", "-f", "/dev/null"]
