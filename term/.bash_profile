###################################
#  My Macos X Bash Configuration
#  2009-10-15
###################################

## Export bin directory ###########
if [ -d ~/bin ]; then
    export PATH=:~/bin:$PATH
fi
###################################

## Colorize Prompt ################
# 
# The colors can be set with the LSCOLORS variable. The color designators are as follows:
# (Standard ANSI colors)
#
#   a black       A bold black (dark grey)
#   b red         B bold red 
#   c green       C bold green
#   d brown       D bold brown (yellow)
#   e blue        E bold blue
#   f magenta     F bold magenta
#   g cyan        G bold cyan 
#   h light grey  H bold grey (white) 
#   x default foreground or background 
#
# The order of the attributes in the LSCOLORS variable is as follows:
#
#   1.  directory   2. symbolic link   3. socket#            4. pipe
#   5.  executable  6. block special   7. character special
#
#   8.  executable with setuid bit set
#   9.  executable with setgid bit set
#  10.  directory writable to others, with sticky bit
#  11.  directory writable to others, without sticky bit
#
# Colors  are set in pairs. 1st color value is foreground, 2nd is background
export CLICOLOR=1
#export LSCOLORS=exfxcxdxbxegedabagacad # Default MacOS X Configuration
export LSCOLORS=AxCxExxEbxadaDBxBxFxHxHx # my Dark Theme

###################################

## Customize Directory List Alias #
alias ls='ls -G'
alias ll='ls -hl'
alias la='ls -a'
alias  l="ls -alF"
###################################


## Customize Prompt ###############
#
#  Usefull Variables:
#
#   \d  the date in “Weekday Month Date” format (e.g., “Tue May 26″)
#   \t  the current time in 24_hour HH:MM:SS format
#   \T  the current time in 12_hour HH:MM:SS format
#   \@  the current time in 12_hour am/pm format
#
#   \h  the hostname up to the first `.’
#   \H  the hostnam with domaine
#
#   \s  the name of the shell, the basename of $0 (the portion following the final slash)
#   \v  the version of bash (e.g., 2.00)
#   \V  the release of bash, version + patchlevel (e.g., 2.00.0)
#
#   \u  the username of the current user
#   \w  current working directory
#   \W  basename of the current working directory
#
#   \!  history number of this command
#   \#  command number of this command
#
# Colors:
#
#  Black       0;30     Dark Gray     1;30
#  Blue        0;34     Light Blue    1;34
#  Green       0;32     Light Green   1;32
#  Cyan        0;36     Light Cyan    1;36
#  Red         0;31     Light Red     1;31
#  Purple      0;35     Light Purple  1;35
#  Brown       0;33     Yellow        1;33
#  Light Gray  0;37     White         1;37

## UserID = 0 is root 

## If the terminal is a stupid one dont use colors:
## Buggy somehow

if [ $TERM = 'xterm' ]; then
  if [ $UID -eq "0" ]; then
    export PS1='\h:\w \u# '
  else
    export PS1='\h:\w \u> '
  fi;
else
#  if [ $UID -eq "0" ]; then
#    export PS1='\[\e[1;31m\]\h\[\e[0m\]:\[\e[0;30m\]\w \[\e[1;33m\]\u\[\e[0m\]# '
#  else
#    export PS1='\[\e[1;30m\]\h\[\e[0m\]:\[\e[0;30m\]\w \[\e[1;31m\]\u\[\e[0m\]> '
#  fi;
#fi;
  if [ "`id -u`" -eq 0 ]; then
    PS1="\[\033[01;31m\]\h\[\033[00m\]:\w# "
  else
    PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\w> "
  fi
fi

###################################

## Customize Editor ##############
export EDITOR='vim'
###################################


## Customize Bash CLI Completition 
export HISTCONTROL=ignoredups # Ignores dupes in the history
shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns
# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
##################################

## My Personal Perl locations ####
#export PERL5LIB=~/perl/lib/perl5/site_perl

# Location of local CPAN Modules:
#PERL5LIB="$PERL5LIB:$HOME/lib/perl5"
#export PERL5LIB

#MANPATH="$MANPATH:$HOME/share/man"
#export MANPATH

# :eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)
