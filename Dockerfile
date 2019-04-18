FROM python:3.7.1-alpine3.8

# Install any necessary python libraries
RUN pip install pyyaml

# At Docker run - Rn all python scripts. The -n 1 makes xargs give each process only one of the arguments, while the -P 3 will make xargs run up to three processes in parallel.
CMD ls /scripts/*.py|xargs -n 1 -P 3 python