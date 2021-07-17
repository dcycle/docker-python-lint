set -e
docker pull ubuntu
docker build -t local-dcycle-python-lint-image .

docker run -v $(pwd)/example:/app/code local-dcycle-python-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-python-lint-image .
