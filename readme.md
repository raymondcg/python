# Using Docker to run python scripts

# CI/CD

## Build Automation

TBD

## Local Build Docker Image

```bash
docker build -t pythonrunner .
docker run -it --rm pythonrunner
```

# Usage

* Ensure this image is available, either from a repository or locally.
* Create a docker-compose file similar to the below in your own project.

```
version: '3'
services:
  pythonrunner:
    container_name: pythonrunner
    image: pythonrunner
    volumes:
      - c:/workspace/parser/scripts/:/scripts
      - c:/workspace/parser/input/:/input
      - c:/workspace/parser/output/:/output
```

* Put any scripts, or input files into the specified folders. WARNING: the script cannot have any white space in the name or file path.

* Run using docker compose

```bash
docker-compose pull
docker-compose up
```

* All of the scripts will run, in alphabetical order, and any output saved to /output in the script will show up in the local folder.