# Editor

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
	export EDITOR='mvim'
else
	export EDITOR='vim'
fi
