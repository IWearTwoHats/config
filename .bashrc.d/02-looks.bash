# Show the exit code in red if the code is non-zero.
exit_code='$(code=$?; [ ! "$code" = 0 ] && echo -n "\[\e[38;5;9m\]$code\[\e[0m\] ")'
exit_code_paren='$(code=$?; [ ! "$code" = 0 ] && echo -n "\[\e[38;5;9m\]($code)\[\e[0m\] ")'
jobs_num='$([ \j -gt 0 ] && echo "\[\e[38;5;11m\]\j\[\e[0m\] ")'
jobs_num_bracket='$([ \j -gt 0 ] && echo "\[\e[38;5;11m\][\j]\[\e[0m\] ")'

random_time_color='\[\e[38;5;$(date "+%S")m\]'

regular-prompt() {
	export PS1="$exit_code_paren\[\e[38;5;10m\]\u@\h\[\e[0m\]:\[\e[38;5;12m\]\w\[\e[0m\] \$ "
}

dev-prompt() {
	export PS1="$exit_code_paren\[\e[0m\e[38;5;10m\]\u\[\e[0m\] \[\e[38;5;12m\]\W\[\e[0m\] $jobs_num_bracket\$ "
}

dev() {
	cd ~/Development
	dev-prompt
}

short-prompt() {
	export PS1="$exit_code_paren\[\e[0m\e[38;5;207m\]\s \[\e[38;5;208m\]\v\[\e[0m\] $jobs_num_bracket\$ "
}

regular-prompt () {
	export PS1="$exit_code_paren\[\e[0m\e[38;5;10m\]\u@\h\[\e[0m\]:\[\e[38;5;12m\]\w\[\e[0m\] $jobs_num_bracket\$ "
}
regular-prompt
