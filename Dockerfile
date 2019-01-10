FROM httpd:2.4
RUN apt-get update -y && apt-get install -y tesseract-ocr-dan tesseract-ocr-eng tesseract-ocr imagemagick && apt-get clean
WORKDIR /build
COPY . .
RUN ./convert.sh 
WORKDIR /usr/local/apache2/htdocs
RUN rm index.html && mkdir text && mkdir images && mkdir pdf && \
	cp /build/*.txt ./text && \
	cp /build/*.png ./images && \
	cp /build/*.pdf ./pdf

