# foundry-template • [![CI](https://github.com/transmissions11/foundry-template/actions/workflows/tests.yml/badge.svg)](https://github.com/transmissions11/foundry-template/actions/workflows/tests.yml)

Streamlined template for getting started with Foundry and Solmate.

## Contributing

You will need a copy of [Foundry](https://github.com/foundry-rs/foundry) installed before proceeding. See the [installation guide](https://github.com/foundry-rs/foundry#installation) for details.

### Setup

```sh
git clone https://github.com/transmissions11/foundry-template.git
cd foundry-template
forge install
```

### Run Tests

```sh
forge test
```

### Update Gas Snapshots

```sh
forge snapshot
```

### Pre-commit Hook

We recommend installing the accompanying pre-commit hook to automatically run `forge fmt` and `forge snapshot` on each commit:

```bash
cp hooks/pre-commit .git/hooks/pre-commit
```
