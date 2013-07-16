# rbenv

# NOTE: only runs if rbenv is already installed
if [ ! "$(command -v rbenv)" = "" ] ; then

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
