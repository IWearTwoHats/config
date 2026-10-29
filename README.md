# Dotfiles

My personal configuration. Non-standard files are explained below.

## `.ansi_theme`
If this file exists, print it to the screen upon login. It contains ANSI escape sequences that set the terminal palette.

## `.bashrc.d`
This directory shall act like any other modular configuration. Any scripts inside will be sourced upon login.

## `.bash_greet`
This file is run at the end of `.bashrc`. It's purpose is only to greet the user upon login.
