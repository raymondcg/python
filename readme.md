# Using Docker to run python scripts

# Build and Run in container

1. Build Docker Image

```bash
docker build -t helloworld:v1 .
```

2. Run docker image

```bash
docker run -it --rm --name HelloWorld helloworld:v1
```