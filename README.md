[![CircleCI](https://circleci.com/gh/dcycle/docker-python-lint.svg?style=svg)](https://circleci.com/gh/dcycle/docker-python-lint)

Lint Python with [PyLint](https://www.pylint.org).

For example:

    docker run --rm -v $(pwd)/example:/app/code dcycle/python-lint:2 --help
    docker run --rm -v $(pwd)/example:/app/code dcycle/python-lint:2 somefile.py
    find . -name "*.py" -print0 | tr '\n' '\0' | xargs -0 -I '$' docker run --rm -v $(pwd):/app/code dcycle/python-lint:2 /app/code/"$"

To ignore a warning, place a comment before the offending line:

    # pylint: disable=E0401
    ...

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/docker-python-lint/).
