FROM asperacli:latest

ENV PATH=/opt/bin:$PATH

COPY ascp.aws.sh /opt/bin/ascp.aws.sh
RUN chmod +x /opt/bin/ascp.aws.sh

WORKDIR /scratch

ENTRYPOINT ["ascp.aws.sh"]
