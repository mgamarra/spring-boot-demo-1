docker build -f Dockerfile --network host -t t1:latest --no-cache .
docker run --rm -it t1:latest
