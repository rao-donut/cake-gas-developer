# cake-gas-developer
Docker container for developing Google App Script locally.

## Usage
### Require
* Docker
* Docker Compose

### Installation
#### Get codes
```
git clone git@github.com:rao-donut/cake-gas-developer.git
```

#### Build
```
cd cake-gas-developer
make build
```

#### Run container
```
make run
```

#### Enter the container
```
make bash
```

### Note
* Use `--no-localhost` when logging into clasp.
* You need to turn on 'Google App Script' in G Suite. If it is off, it will appear on the console.

### More infomation
* [Command Line Interface using clasp](https://developers.google.com/apps-script/guides/clasp)
* [Google App Script](https://developers.google.com/apps-script)

