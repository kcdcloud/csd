## BUILDING
##   (from project root directory)
##   $ docker build -t node-js-for-kcdcloud-csd .
##
## RUNNING
##   $ docker run -p 3000:3000 node-js-for-kcdcloud-csd
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:3000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r10

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="0ww5ve2" \
    STACKSMITH_STACK_NAME="Node.js for kcdcloud/csd" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install node-7.1.0-0 --checksum f7c066a9ccff1d3395fcb4e4f268a70c228fb74dcb1ed83761888791d538571d

ENV PATH=/opt/bitnami/node/bin:/opt/bitnami/python/bin:$PATH \
    NODE_PATH=/opt/bitnami/node/lib/node_modules

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# ExpressJS template
COPY . /app
WORKDIR /app

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
