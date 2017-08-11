# Ghost Docker Development

[Docker image](https://hub.docker.com/r/noiselabs/ghost-dev/) for theme development with Ghost 1.5+. Used by [Ghost Base](https://github.com/noiselabs/ghost-base).

![Ghost + Docker logo](docs/ghost-docker.png "Ghost + Docker logo")

## Usage with Docker Compose

> See [Ghost Base](https://github.com/noiselabs/ghost-base) for more details.

Create a `docker-compose.yml` file with:

```
version: '3'

services:
  dev:
    image: noiselabs/ghost-dev:latest
    ports:
      - "2368:2368"
    volumes:
      - ./config/config.development.json:/var/lib/ghost/config.development.json
      - ./content:/var/lib/ghost/content
    environment:
      - NODE_ENV=development
      - NPM_CONFIG_LOGLEVEL=debug
```

And start the `dev` service:

```
ghost-base $ docker-compose up dev
Creating ghostbase_dev_1 ...
Creating ghostbase_dev_1 ... done
Attaching to ghostbase_dev_1
dev_1   | [2017-08-08 17:58:04] INFO Creating table: posts
dev_1   | [2017-08-08 17:58:04] INFO Creating table: users
dev_1   | [2017-08-08 17:58:04] INFO Creating table: roles
dev_1   | [2017-08-08 17:58:04] INFO Creating table: roles_users
dev_1   | [2017-08-08 17:58:04] INFO Creating table: permissions
dev_1   | [2017-08-08 17:58:04] INFO Creating table: permissions_users
dev_1   | [2017-08-08 17:58:04] INFO Creating table: permissions_roles
dev_1   | [2017-08-08 17:58:04] INFO Creating table: permissions_apps
dev_1   | [2017-08-08 17:58:04] INFO Creating table: settings
dev_1   | [2017-08-08 17:58:04] INFO Creating table: tags
dev_1   | [2017-08-08 17:58:04] INFO Creating table: posts_tags
dev_1   | [2017-08-08 17:58:04] INFO Creating table: apps
dev_1   | [2017-08-08 17:58:04] INFO Creating table: app_settings
dev_1   | [2017-08-08 17:58:04] INFO Creating table: app_fields
dev_1   | [2017-08-08 17:58:04] INFO Creating table: clients
dev_1   | [2017-08-08 17:58:04] INFO Creating table: client_trusted_domains
dev_1   | [2017-08-08 17:58:04] INFO Creating table: accesstokens
dev_1   | [2017-08-08 17:58:04] INFO Creating table: refreshtokens
dev_1   | [2017-08-08 17:58:04] INFO Creating table: subscribers
dev_1   | [2017-08-08 17:58:04] INFO Creating table: invites
dev_1   | [2017-08-08 17:58:04] INFO Creating table: brute
dev_1   | [2017-08-08 17:58:04] INFO Model: Post
dev_1   | [2017-08-08 17:58:05] INFO Model: Tag
dev_1   | [2017-08-08 17:58:05] INFO Model: Client
dev_1   | [2017-08-08 17:58:05] INFO Model: Role
dev_1   | [2017-08-08 17:58:05] INFO Model: Permission
dev_1   | [2017-08-08 17:58:05] INFO Model: User
dev_1   | [2017-08-08 17:58:06] INFO Relation: Role to Permission
dev_1   | [2017-08-08 17:58:07] INFO Relation: Post to Tag
dev_1   | [2017-08-08 17:58:07] INFO Relation: User to Role
dev_1   | [2017-08-08 17:58:07] INFO Finished database migration!
dev_1   | [nodemon] 1.11.0
dev_1   | [nodemon] to restart at any time, enter `rs`
dev_1   | [nodemon] watching: /var/lib/ghost/content/themes/**/*
dev_1   | [nodemon] starting `node current/index.js`
dev_1   | [2017-08-08 17:58:13] INFO Ghost is running in development...
dev_1   | [2017-08-08 17:58:13] INFO Listening on: 0.0.0.0:2368
dev_1   | [2017-08-08 17:58:13] INFO Url configured as: http://localhost:2368/
dev_1   | [2017-08-08 17:58:13] INFO Ctrl+C to shut down
dev_1   | [2017-08-08 17:58:13] INFO Ghost boot 5.415s
```

Your Ghost blog will now be running on [http://localhost:2368/](http://localhost:2368/). Enjoy.

## Building and pushing to the [Docker Hub](https://hub.docker.com/) Registry

```
# To build:
./scripts/build.sh

# To build and push the updated image to the Docker Hub:
./scripts/update.sh
```

## License

This project is licensed under the [MIT License](LICENSE).
