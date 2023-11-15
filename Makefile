image:
	docker build -t ounch/pdfjs .

compile:
	docker run --rm -v ./pdf.js/:/home/node/app/ ounch/pdfjs npm install

build:
	docker run --rm -v ./pdf.js/:/home/node/app/ ounch/pdfjs gulp generic
up:
	docker run --rm -d --name pdfjs --rm -p 8888:8888  -v ./pdf.js/:/home/node/app/ ounch/pdfjs gulp server 
down:
	docker stop pdfjs

shell:
	docker run --rm -it -v ./pdf.js/:/home/node/app/ ounch/pdfjs /bin/bash
