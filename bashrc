alias l='ls -F'
alias ll='ls -1AF'
alias ls='ls -G'

r=15
g=0
b=0
i=0
j=0

export TERM=xterm-256color

function rainbow
{
	ARRAY=(196 202 226 76 87 27 93)
	COLOR=(196 202 208 214 220 226 190 154 118 82 46 47 48 49 50 51 45 39 33 27 21 57 93 129 165 201 200 199 198 197)

	if [ $i == 30 ]; then
		i=0
	fi

	PS1='\[\e[38;5;${COLOR[$((i++))]}m\][\A] \[\e[37m\]\$ \[\e[$(($? ? 31 : 32))m\]\u\[\e[36m\][\h]\[\e[97m\]:\[\e[33m\]\w\[\e[0m\] '
	PS2='\[\e[38;5;${ARRAY[$((j++ % 7))]}m\]>\[\e[0m\] '
}

PROMPT_COMMAND="rainbow"
