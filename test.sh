set -e
docker pull node
docker pull dcycle/python-lint
docker build -t local-dcycle-python-lint-image .

docker run -v $(pwd)/example:/app/code dcycle/python-lint --help
docker run -v $(pwd)/example:/app/code dcycle/python-lint .
docker run -v $(pwd)/example:/app/code local-dcycle-python-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-python-lint-image .
