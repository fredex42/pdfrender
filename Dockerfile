FROM ubuntu:latest

RUN apt -y update && apt -y install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra pandoc && apt -y clean && rm -rf /var/cache/apt
RUN useradd pdfrender
USER pdfrender
WORKDIR /home/pdfrender

