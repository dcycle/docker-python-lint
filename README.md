[![GitHub Actions](https://github.com/dcycle/docker-python-lint/actions/workflows/config.yml/badge.svg)](../../actions/workflows/config.yml)

Lint Python with [PyLint](https://www.pylint.org).

For example:

    docker run --rm -v $(pwd)/example:/app/code dcycle/python-lint:2 --help
    docker run --rm -v $(pwd)/example:/app/code dcycle/python-lint:2 ./code
    find . -name "*.py" -print0 | tr '\n' '\0' | xargs -0 -I '$' docker run --rm -v $(pwd):/app/code dcycle/python-lint:2 /app/code/"$"

To ignore a warning, place a comment before the offending line:

    # pylint: disable=E0401
    ...

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/docker-python-lint/).
