# dotfiles

My custom dotfiles powered by [RCM](https://github.com/thoughtbot/rcm).

## Manual

- `mkrc [-t] <[file|dir]-path>`: move to `~/.dotfiles` dir and create a symbolic to current
- `lsrc`: list all hosting dotfiles
- `rcup [-t <tag-name>]`: deploy dotfiles

## Notes

### `zsh_functions`

You can add custom functions to `zsh_functions` directory and it will be loaded automatically.

The autoload code is in `zshrc` file.

```sh
# custom functions
function load_fns() {
  function_dir="$HOME/.zsh_functions"
  fpath=($function_dir $fpath)
  for function_file in $function_dir/*; do
      function_name=$(basename $function_file)
      autoload -Uz $function_name
  done
}
load_fns

```

You can use functions like this:

```sh
# note the function name must be the same with file name
alias gcl='git_clean_current_branch'
```
