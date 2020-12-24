mvn clean install -Dmaven.test.skip=true
cp -r ./target/lib ./docker/app/
cp ./target/microprofile-metrics-quickstart-runner.jar ./docker/app/app.jar
cd ./docker/app
docker build -t app-with-metrics .
cd ../prometheus
docker build -t prometheus .
cd ../grafana
docker build -t grafana .
docker-compose up
