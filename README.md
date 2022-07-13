# developer-tool - Plugin

## Introduction

This [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) plugin has utility and alias for environment developer.

## Requirements

Commands are required for this plugin:

* [clip](https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/clipboard.zsh)
* [fzf](https://github.com/junegunn/fzf)
* [bat](https://github.com/sharkdp/bat)
* grep
* curl

## Installation 👾

### Installation Automatically

|Method               |Description                                                                                                                                      |
|:--------------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
|`curl`               |`zsh -c "$(curl -fsSL https://raw.githubusercontent.com/sercheo87/developer-tool/main/installation/install.sh)"`                                 |

### Installation Manual

For use open:

```bash
vi ~/.zshrc
```

And add:

```bash
plugins=(
  ...
  developer-tool
  ...
)
```

## Tools 🛠

### Functions

|Command        |Description                                                                                                                     |Example                                 |
|:-------------|:-------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------|
|`devtool`     |Update plugin.                                                                                                                  |                                        |
|`gltc`        |Get line number from ***file*** and copy to clipboard. Usage `gltc [Line_Number] [File_Path]`                                   |`gltc 1 README.md`                      |

### Aliases

|Command        |Description                                                                              |
|:-------------|:----------------------------------------------------------------------------------------|
|`fzfp`        |Command ***fzf*** and ***bat*** with preview by default.                                 |

## Maintainer 🐱‍💻

* Contributor: [sercheo87](https://github.com/sercheo87)
* Repository: [https://github.com/sercheo87/developer-tool](https://github.com/sercheo87/developer-tool)
