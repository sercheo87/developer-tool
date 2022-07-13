# developer - Plugin

## Introduction

This ZSH pligin has utility and alias for evironment developer.

## Installation

|Method               |Description                                                                                                                       |
|:--------------------|:---------------------------------------------------------------------------------------------------------------------------------|
|`curl`               |`zsh -c "$(curl -fsSL https://raw.githubusercontent.com/sercheo87/developer-tool/main/installation/install.sh)"`                                 |

## Use

For use open:

```bash
vi ~/.zshrc
```

And add:

```bash
plugins=(
  ...
  developer
  ...
)
```

## Tools

### Functions

|Comand        |Description                                                                                                                     |Example                                 |
|:-------------|:-------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------|
|`devtool`     |Update plugin.                                                                                                                  |                                        |
|`gltc`        |Get line number from ***file*** and copy to clipboard. Usage `gltc [Line_Number] [File_Path]`                                   |`gtlc 1 README.md`                      |

### Aliases

|Comand        |Description                                                                              |
|:-------------|:----------------------------------------------------------------------------------------|
|`fzfp`        |Command ***fzf*** and ***bat*** with preview by default.                                 |

## Maintainer

### [sercheo87](https://github.com/sercheo87)

[https://github.com/sercheo87/developer-tool](https://github.com/sercheo87/developer-tool)
