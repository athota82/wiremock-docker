Clone the repo

cd wiremock-docker
docker build -t wiremock_sample .
docker run -d --name wiremock-container -it --rm -p 8084:8080 wiremock_sample


 Access [http://localhost:8084/hello] to show contents of the hello.json


***************************************** Extras *************************************

---To proxy and get the sample mocks recorded

 docker run -d --name wiremock-container   -p 8084:8080   -v $PWD/recordings:/home/wiremock   -u $(id -u):$(id -g)   wiremock_sample     --proxy-all="http://wiremock.org"     --record-mappings --verbose


