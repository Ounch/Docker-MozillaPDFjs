### Build image
sudo docker build -t ounch/pdfjs .

### Run Manually
docker run -p 8888:8888 ounch/pdfjs

### Run via Docker Compose
docker-compose up -d

### Test
http://localhost:8888/web/viewer.html
