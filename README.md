# oauth2-proxy-docker

Docker image for oauth2-proxy (https://github.com/bitly/oauth2_proxy)

# Build

```bash
git clone https://github.com/tunglam14/oauth2-proxy-docker.git
cd oauth2-proxy-docker
docker build -t oauth2-proxy:latest .
```

# Pull

```bash
docker pull docker pull dangtunglam/oauth2-proxy
```

# Run

```bash
docker run -it --rm dangtunglam/oauth2-proxy <option_here>
```

View all Options: https://github.com/bitly/oauth2_proxy#command-line-options

FYI: [oauth2-proxy-docker can be configured via config file, command line options or environment variables.](https://github.com/bitly/oauth2_proxy#configuration)
