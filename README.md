# My ZSH custom directory

I've created it especially to share publicly the workaround for eksctl anywhere completions workaround.
See 'plugins/eksctl'


# Custom notes:
## Plugins
Add your own custom plugins in the custom/plugins directory. Plugins placed
here will override ones with the same name in the main plugins directory.
See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-plugins

## Themes
Put your custom themes in this folder.
See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-themes

Example:
```
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
```
