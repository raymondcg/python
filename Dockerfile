FROM python:3.7.1-alpine3.8

WORKDIR /scripts

# Copy Source code into the image
ADD ./scripts/* /scripts/

# At Docker run - Rn all python scripts. The -n 1 makes xargs give each process only one of the arguments, while the -P 3 will make xargs run up to three processes in parallel.
CMD ls /scripts/*.py|xargs -n 1 -P 3 python