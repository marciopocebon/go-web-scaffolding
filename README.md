# Go Web Scaffolding

Scaffolding for web applications written in Go.

Libraries:
- HTTP Middleware: [https://github.com/gin-gonic/gin](https://github.com/gin-gonic/gin)
- ORM: [https://github.com/jinzhu/gorm](https://github.com/jinzhu/gorm)
- Configuration Management: [https://github.com/caarlos0/env](https://github.com/caarlos0/env)
- Logging: [https://github.com/Sirupsen/logrus](https://github.com/Sirupsen/logrus)
- Package Management: [https://github.com/Masterminds/glide](https://github.com/Masterminds/glide)
- Unit Tests: [https://onsi.github.io/ginkgo/](https://onsi.github.io/ginkgo/)

***

## making new changes
***Note: See [CONTRIBUTING.md](/CONTRIBUTING.md) before making any changes.***
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
***Note: To run the application as a container head over [README-docker.md](/README-docker.md).***
Build and install the application.
```bash
go install
```

Run the app
```bash
source .env-host-docker
./$GOBIN/go-web-scaffolding
```
