# -*- mode: sh -*-
# Navigation
## Automatically cd if I have been given a directory
setopt autocd
## I love pushd
setopt auto_pushd
## Variables that contain paths are 'cd'able
setopt cdable_vars
### Don't print the list of directories in the stack with pushd
# setopt pushd_silent
## auto_ls on cd
c() {
    cd $*
    ls --color
}
## And a blank pushd behaves like cd and goes to $HOME
setopt pushd_to_home

# History
## Append history
setopt append_history
## large happy history
export HISTFILE=~/.histfile
export HISTSIZE=1000000
export SAVEHIST=100000
## Don't add consecutive duplicates
setopt hist_ignore_dups
## Remove superfluous blanks when remvoing
setopt hist_reduce_blanks
## I don't like inc_append_history since it clobbers up the sequence
## of commands
unsetopt inc_append_history
## Gets me start time, elapsed time etc. Awesome feature
setopt extended_history
## Quick incognito mode
setopt hist_ignore_space

# Speed up usage
## requires use of rehash at times. But that is ok.
setopt hash_cmds
setopt hash_dirs

# Job control
## Show jobs in long form
setopt long_list_jobs
## Don't kill the bg processes when I exit the shell
set nohup
## NICE the background jobs to keep the shell responsive
setopt bg_nice
## Don't interrupt me with background notifications
unsetopt notify

# The don't-self-destruct button
## Don't allow rm * for 10 seconds. Use tab to expand it if you are
## sure about the delete
setopt rm_star_wait

# Utils
## No need for do/done in a short for/if/function/select
## eg. for x in *; stmt;
setopt short_loops
## Pass the * or ? to the code if you fail. Useful for find and grep
unsetopt nomatch  		
## Same story for bad patterns
unsetopt badpattern	
## Don't bug me with beeps
unsetopt beep

# Use Emacs keybindings
bindkey -e
