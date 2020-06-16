FROM centos:7

RUN yum-config-manager --add-repo https://release.memsql.com/production/rpm/x86_64/repodata/memsql.repo && \
    yum install -y memsql-studio

COPY studio.hcl /var/lib/memsql-studio/studio.hcl

EXPOSE 8080/tcp

CMD ["memsql-studio"]
