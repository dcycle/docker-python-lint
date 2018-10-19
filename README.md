[![CircleCI](https://circleci.com/gh/dcycle/docker-python-lint.svg?style=svg)](https://circleci.com/gh/dcycle/docker-python-lint)

Lint Python with [PyLint](https://www.pylint.org).

For example:

    docker run -v $(pwd)/example:/app/code dcycle/python-lint --help
    docker run -v $(pwd)/example:/app/code dcycle/python-lint .

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/docker-python-lint/).
