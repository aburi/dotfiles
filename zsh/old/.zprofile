# This file is loaded before Terminal loads your shell environment and
# contains all the startup configuration and preferences for your command line interface.

# All shells read various files when they are run. Depending on the
# command line arguments, shells read a “profile/env” file of some
# sort and an “rc” (runtime configuration) file. For example, bash reads
# .bash_profile and .bashrc (among others) and zsh reads .zshenv and/or
# .zprofile (depending on the platform) and .zshrc (among others).

# If you aren’t sure what shell you are using, type this in a terminal: echo $SHELL

# to see a list of $PATHs: echo -e ${PATH//:/\\n}

# ------------------------------------------------------------------

# Add RVM to PATH for scripting
# export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Configure your $PATH for WP-CLI / MAMP
# echo $PATH | grep -q -s "/Applications/MAMP/bin/php/php5.6.10/bin"
# if [ $? -eq 1 ] ; then
# 	export MAMP_PATH=/Applications/MAMP/bin/php/php5.6.10/bin
# 	export PATH="$MAMP_PATH:$PATH"
# fi


# MAMP -------------------------------------------------------------
# Use MAMP version of PHP
# PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
# PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH

# Add MAMP mysql command file to shell
# PATH=$PATH:/Applications/MAMP/Library/bin

# Global route to mysql
# /usr/local/mysql/bin
# /MAMP ------------------------------------------------------------

# WHERE IS PHPLINT INSTALLED?
# phplint ----------------------------------------------------------
# PATH=$PATH:/usr/local/Library/Taps/homebrew/homebrew-php
# /phplint ---------------------------------------------------------

# POSTGRES ---------------------------------------------------------
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# /POSTGRES ---------------------------------------------------------

# If we need to extend our PATH variable to include VirtualBox
# PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS/

export PATH


# Additions from the link below
# https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile
# ------------------------------------------------------------------

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Source .aliases
for I in aliases; do
  [ -f ~/.$I ] && . ~/.$I
done

# Add tab-completion to vv
source $( echo $(which vv)-completions)