# rbenv

# only run code below if rbenv installed via homebrew
if [ -x /usr/local/bin/rbenv ] ; then

  # rehash shims
  rbenv rehash 2>/dev/null

  # shell thing
  rbenv() {
    command="$1"
    if [ "$#" -gt 0 ]; then
      shift
    fi

    case "$command" in
      shell)
        eval `rbenv "sh-$command" "$@"`;;
      *)
        command rbenv "$command" "$@";;
    esac
  }

  # enable rbenv
  eval "$(rbenv init -)"
fi
