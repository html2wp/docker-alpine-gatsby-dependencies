
# How to use

Create a docker-compose.yml in your project folder:

```YAML
version: "3"

services:
  frontend:
    image: rocketfactory/docker-alpine-gatsby-dependencies
    command: npm run develop
    volumes:
      - ./frontend:/home/app
    ports:
      - "8000:8000"
  install-frontend:
    image: rocketfactory/docker-alpine-gatsby-dependencies
    command: npm install
    volumes:
      - ./frontend:/home/app
```

Run this in your project folder to get the Gatsby starter

```shell
git clone https://github.com/gatsbyjs/gatsby-starter-default.git frontend --single-branch
```

Then install dependencies

```shell
docker-compose up install-frontend
```

Change scripts.develop in frontend/package.json to:

```json
"scripts": {
  ...
  "develop": "gatsby develop -H 0.0.0.0",
  ...
}
```

Start the development server

```shell
docker-compose up frontend
```

Navigate to http://localhost:8000/