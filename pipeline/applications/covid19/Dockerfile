FROM httpd
LABEL maintainer="Tia Leo"
ARG port=80
USER root
RUN apt -y update && \
    apt -y install wget && \
    apt -y install unzip

WORKDIR /usr/local/apache2/htdocs/

RUN rm -rf *
ADD ./code/* /usr/local/apache2/htdocs/

ENTRYPOINT ["httpd-foreground"]
EXPOSE ${port}