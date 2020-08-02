<div align="center">
  <p>
    <h3>Mosquitto MQTT Broker in GitHub Actions</h3>
  </p>
  <p>Start a Mosquitto message broker in your GitHub Actions.</p>
</div>

---

## Introduction

This GitHub Action starts a Mosquitto message broker on the default port `1883` and `9001` for WebSockets.

This is useful when running tests against an MQTT broker.


## Usage

```yaml
name: Run tests

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Git checkout
        uses: actions/checkout@v1
  
      - name: Start Mosquitto
        uses: namoshek/mosquitto-github-action@0.1.0
        with:
          version: '1.6'
  
      - run: test
```

Currently, the following parameters are supported:

| Parameter | Default  | Description |
|-----------|----------|-------------|
| `version` | `latest` | An image tag of the [eclipse-mosquitto](`https://hub.docker.com/_/eclipse-mosquitto`) Docker image. |
| `port`    | `1883`   | The default port for TCP connections (without SSL). |
| `port-websockets` | `9001` | The port for WebSocket connections (without SSL). |

## License

This action is published under the [MIT license](LICENSE).
