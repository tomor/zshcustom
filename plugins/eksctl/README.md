# eksctl and eksctl anywhere completion plugin

Enable the eksctl and eksctl completions via oh-my-zsh by adding the plugin to `~/.zshrc`
```shell
plugins=(eksctl)
```

The problem I had with `eksctl anywhere` autocompletion was that after enabling it, it produced this:
```shell
eksctl anywhere <tab>
eksctl anywhere flags\ cannot\ be\ placed\ before\ the\ anywhere\ command

eksctl version
0.204.0-dev+b073ca55e.2025-02-13T20:01:47Z
```

I've created a ticket in eksctl github repo: https://github.com/eksctl-io/eksctl/issues/8221

## eksctl plugin description
The eksctl plugin in this repo puts the auto completions to the standard zsh completions directory.

To overcome the issue described above it creates aliases `anywhere` and `an` for which the completions work.

## example:

```shell
> an <tab>
Use eksctl anywhere to build your own self-managing cluster on your hardware with the best of Amazon EKS

Usage:
anywhere [command]

Available Commands:
check-images  Check images used by EKS Anywhere do exist in the target registry
completion    Generate the autocompletion script for the specified shell
copy          Copy resources
create        Create resources
delete        Delete resources
download      Download resources
exp           experimental commands
generate      Generate resources
help          Help about any command
import        Import resources
install       Install resources to the cluster
list          List resources
upgrade       Upgrade resources
version       Get the eksctl anywhere version

Flags:
-h, --help            help for anywhere
-v, --verbosity int   Set the log level verbosity

Use "anywhere [command] --help" for more information about a command.

```
