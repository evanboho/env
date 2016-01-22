alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias lt="cd ~/Documents/code/lt"
alias ltlt="cd ~/Documents/code/lt/letote"
alias r="rails"

alias gffs="git flow feature start"

deploy() {
  if [[ "$#" -eq 1 ]]; then
    cap $1 deploy -S $(git_current_branch)
  else
    echo "Wrong number of arguments"
  fi
}

gdgr() {
  paths=$(gst | grep modified | grep $1 | sed s/modified:// | xargs)

  if [ ${#paths} -gt 0 ]; then
    eval "gd head -- $paths"
  fi
}

