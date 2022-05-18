build:
	mvn clean package -DskipTests

docker-build:
	docker build -t petz/demo-app .

docker-run:
	docker run --rm -it -m 400m -p 8080:5000 petz/demo-app

docker-run-env:
	docker run --rm -it -m 400m -p 8080:5000 -e 'JAVA_OPTS=-XX:MinRAMPercentage=50.0 -XX:MaxRAMPercentage=80.0' petz/demo-app
	