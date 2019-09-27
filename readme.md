# Using Docker to run python scripts

# CI/CD

## Build Automation

TBD

## Local Build Docker Image

```bash
docker build -t pythonrunner .
docker run -it --rm -v D:/workspace/python/scripts/:/scripts:Z pythonrunner
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
      - c:/workspace/parser/scripts/:/scripts:Z
      - c:/workspace/parser/input/:/input:Z
      - c:/workspace/parser/output/:/output:Z
```

* Put any scripts, or input files into the specified folders. WARNING: the script cannot have any white space in the name or file path.

* Run using docker compose

```bash
docker-compose pull
docker-compose up
```

* If you run into issues with the mounts you may have to clean up from previous runs

```bash
docker volume prune -f
```

* All of the scripts will run, in alphabetical order, and any output saved to /output in the script will show up in the local folder.