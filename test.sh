set -e
docker pull python:3-alpine
docker build -t local-dcycle-python-lint-image .

echo "=>"
echo "=> Running help command"
echo "=>"
docker run --rm -v $(pwd)/example:/app/code local-dcycle-python-lint-image --help

echo "=>"
echo "=> Running pylint on the example"
echo "=>"
docker run --rm -v $(pwd)/example:/app/code local-dcycle-python-lint-image ./code

echo "=>"
echo "=> All done"
echo "=>"
