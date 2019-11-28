FROM registry.access.redhat.com/ubi8/ubi

LABEL maintainer="adorsys GmbH & Co. KG" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="adorsys GmbH & Co. KG" \
      org.label-schema.name="" \
      org.label-schema.description="" \
      org.label-schema.usage="" \
      org.label-schema.license="" \
      org.label-schema.build-date=""

ENV HOME=/tmp

COPY --from=minio/mc:latest /usr/bin/mc /usr/bin/mc

RUN dnf-3 install -y python36 && dnf clean all

ENTRYPOINT ["mc"]
