# Gowiki-demo

Golang wiki web app with dockerize

## Docker

```bash
docker build . -t gowiki-demo
docker run -it --rm -p 8000:8000 gowiki-demo
```

http://localhost:8000


### Publish to docker hub

```bash
docker tag gowiki-demo:latest hanksudo/gowiki-demo:1.0.0
docker push hanksudo/gowiki-demo:1.0.0
```

https://hub.docker.com/r/hanksudo/gowiki-demo