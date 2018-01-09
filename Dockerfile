FROM abernix/meteord:node-4-base

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir /setup
RUN wget -O /setup/wkhtmltopdf.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN ls -al
RUN cd /setup && dpkg -i wkhtmltopdf.deb && apt-get install -f .
