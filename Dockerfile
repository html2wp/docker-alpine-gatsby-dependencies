FROM gazf/alpine-sharp

RUN npm install -g gatsby-cli

# For gatsby build process
RUN apk update
RUN apk add --no-cache util-linux

WORKDIR /home/app
