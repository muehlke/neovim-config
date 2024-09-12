# Requirements

## `nvim-soil`

- nsxiv (which also has some dependencies)
- latest OpenJDK
- plantuml-X-X.X.X.jar installed at /usr/share/java

## `Telescope`

- `ripgrep` for `Live grep` feature

## `LuaFormatter`

- Make sure to install all Lua header files with:

```sh
sudo apt update
sudo apt install liblua5.3-dev
```

# Install with

## SSH

```
git clone git@github.com:muehlke/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## HTTPS

```
git clone https://github.com/muehlke/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
