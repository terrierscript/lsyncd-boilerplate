# lsyncd boilerplate

### Install (Mac OS X)

```
brew update
brew install homebrew/dupes/rsync
brew install lsyncd lua
```

### Setup

```
cp conf.lua{.tmp,}
```

```lua
user   = "user.name",
host   = "remote-server-host",

source = "/path/to/source", -- local
dest   = "/path/to/dest",   -- remote server
```

## Start
```
sudo lsyncd lsync.conf.lua
```

## TODO
- Launchd

## lsyncd
https://github.com/axkibe/lsyncd/wiki/Manual-to-Lsyncd-2.1.x
