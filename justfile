build:
  docker run --rm -v "$(pwd)":/code \
  --mount type=volume,source="$(basename "$(pwd)")_cache",target=/code/target \
  --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry \
  --platform linux/amd64 \
  cosmwasm/workspace-optimizer:0.12.6

junod-shell:
  docker run -v "$PWD":/dao-contracts -it --platform linux/amd64 \
  ghcr.io/cosmoscontracts/juno:v6.0.0 sh