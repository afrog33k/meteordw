FROM abernix/meteord:node-4-base

RUN mkdir /setup
RUN curl https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb > /setup/wkhtmltopdf.deb
RUN cd /setup && sudo dpkg -i wkhtmltopdf.deb && sudo apt-get install -f .
