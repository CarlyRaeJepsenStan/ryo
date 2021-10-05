FROM gitpod/workspace-full

RUN brew install R && sudo apt-get --assume-yes install libxml2-dev
RUN apt-get update && apt-get install -y libxml2-dev
