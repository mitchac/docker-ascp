FROM asperacli:latest

ENV PATH=/opt/bin:$PATH

COPY asperacli.aws.sh /opt/bin/asperacli.aws.sh
RUN chmod +x /opt/bin/asperacli.aws.sh

WORKDIR /scratch

ENTRYPOINT ["ascp.aws.sh"]
