# Biggin's dotfiles
My personal initialization files for daily use &amp; my Android/Java programming fun....

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails.
                                          ***Use at your own risk!***

### Using Git and the install script

You can clone the repository wherever you want. (I like to keep it in `~/github/dotfiles`, with `~/.dotfiles` as a symlink.) The install script will pull in the latest version and copy the files to your `${HOME}/github` folder.

```bash
mkdir -pv ~/github && git clone https://github.com/Biggin/dotfiles.git ~/github/dotfiles && \
  source ~/github/dotfiles/oh-my-bash.sh
```
To update, `cd` into your local `~/.dotfiles` repository and then:

```bash
source update.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/Biggin/dotfiles/tarball/main | tar -xzv --strip-components 1 --exclude={README.md,LICENSE.md,.gitignore}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files.
Here’s an example `~/.path` file that adds `~/.local/bin` to the `$PATH`:

```bash
export PATH="~/.local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Biggin"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="biggin61186@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/Biggin/dotfiles/fork) instead, though.

Some of the functionality of these dotfiles depends on functions installed by `~/.dotfiles/install.sh`. If you don’t plan to run `install.sh`, you should look carefully through the script and manually install any particularly important ones.

## Feedback

Suggestions/improvements
[welcome](https://github.com/Biggin/dotfiles/issues)!

## Author

| ![twitter/cl_nelson4](http://twitter.com/cl_nelson4 "Follow @cl_nelson4 on Twitter") |
|---|
| [Cory Nelson](https://corynelson.me/)|

## Thanks to…

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
*
*
