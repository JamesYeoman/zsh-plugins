# ZSH Plugins

My personal repository of ZSH configuration extracted out into standalone plugins.

## Usage

In order to use any of the plugins, I only have experience using Antigen, so I can't comment if it'll be the exact same experience
elsewhere, but it's basically as follows

```zsh
antigen bundle JamesYeoman/zsh-plugins plugins/<plugin name>
```

## Handling $PATH

Sometimes, placing an entry in the wrong place in `$PATH` can end up causing issues.

Sometimes, people are just really picky about the order that things are loaded in.

Whatever your reason, you don't have to worry about these plugins configuring `$PATH` without your explicit request. If you just want things to just
work, and there are `$PATH` updates that are needed for a specific plugin, then you'll need to add `plugins/path/<plugin name>` to your plugin config.
