# icon-font-to-png-docker

Throws [icon-font-to-png](https://github.Pythonity/icon-font-to-png) in a docker container and exports all the octicons to various colors

## Usage

```bash
mkdir exports

docker build -t font2png .

docker run --rm -v $(pwd)/exports:/root:rw font2png
```
