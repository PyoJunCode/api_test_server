# fastapi-test
REST API server support "ping" method via FastAPI


## Build

```Bash
docker build -t <image-name> .
```

## Run

Default fastapi port is 8888.
If you want to change it, modify the `CMD` line in `Dockerfile`

```Bash
docker run -d -p <port>:8888 <image-name>
```

## Test

Test server will return <200> status code and "ok" message if it's working.

You can test on python and web browser

```
import requests

res = requests.get("http://localhost:<port>/ping")

print(res.text)
print(res.status_code)
