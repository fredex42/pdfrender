FROM --platform=linux/amd64 ubuntu:latest

RUN apt-get update
RUN apt-get -y install wget gnupg
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get -y install google-chrome-stable
RUN google-chrome-stable --version
RUN adduser pdfrender
USER pdfrender

#example usage: google-chrome-stable --headless --print-to-pdf --no-pdf-header-footer file:///path/to/file