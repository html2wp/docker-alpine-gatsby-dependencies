git clone https://github.com/gatsbyjs/gatsby-starter-default.git frontend --single-branch

docker-compose.yml:

version: "3"

services:
  frontend:
    image: rocketfactory/docker-alpine-gatsby-dependencies
    command: npm run serve
    volumes:
      - ./frontend:/home/app
    ports:
      - "8000:8000"
