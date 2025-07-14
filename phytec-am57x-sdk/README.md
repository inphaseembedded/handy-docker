# Build the docker image
docker build -t phycore-am57x-PD24.1.0 .

# Change Directory
change to whatever directory you want to be your working directory. In the case of the SDK it should be a folder that has the SDK installer.

# Run the container
docker run --rm -it --ulimit nofile=65536:65536 -v $(pwd):/workspace phytec-am57x-pd24.1.0

# Install the SDK

# Build your code either in interactive mode (-it) or not


