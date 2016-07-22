# Go Web Scaffolding

***Note: To run the application in your local environment head over [README.md](/README.md).***

***

## build.image
```
$ source .env-host-docker
$ docker build -t $APP_IMAGE_NAME .
```

## unit.tests
```
$ source .env-host-docker
$ docker run \
    --rm \
    -p $APP_HOST_PORT:$APP_GUEST_PORT/tcp \
    --name $APP_CONTAINER_NAME \
    --env-file .env-guest-docker \
    $APP_IMAGE_NAME go test ./spec/... -v
```

## run.container
```
$ source .env-host-docker
$ docker run \
    --rm \
    -p $APP_HOST_PORT:$APP_GUEST_PORT/tcp \
    --name $APP_CONTAINER_NAME \
    --env-file .env-guest-docker \
    $APP_IMAGE_NAME \
    /bin/sh -c "go install && $APP_CONTAINER_BIN"
```
