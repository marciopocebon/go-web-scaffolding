# Go Web Scaffolding

Scaffolding for web applications written in Go.

***Note: To run the application as a container head over [README-docker.md](/README-docker.md).***

***

## making new changes
### pre-requisites
- golang (v1.6.2)
- glide (`go get github.com/Masterminds/glide`)

### download and install app's dependencies
```bash
glide install
```

### test
```bash
go test ./spec/... -v
```

## running the application
Build and install the application.
```bash
go install
```

Run the app
```bash
source .env-host-docker
./$GOBIN/go-web-scaffolding
```

**See [CONTRIBUTING.md](/CONTRIBUTING.md) before making any changes.**
