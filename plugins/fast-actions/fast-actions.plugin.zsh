# CLI support for several common actions
#
# See README.md for details

function fa_jira_open() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    echo $JIRA_PROJECT_PREFIX
    issue=$(echo $branch | awk  'BEGIN{RS="/";}/^'${JIRA_PROJECT_PREFIX}'/{print $1 }')
    echo "opening issue ${issue} from branch ..."
    jira "${issue}"
}

function fa_github_open() {
    local url=$(git config --get remote.origin.url)
    if [[ url == git* ]]; then
        https_url=${url/"git@"/"https://"}
        url=${url/":"/"/"}
    fi
    echo "opening github remote url ${url} ..."
    open_command "${url}"
}

function fa() {
  emulate -L zsh
  
  local action=$1
  if [[ $action == "jira" ]]; then
    fa_jira_open
  elif [[ "$action" == "github" ]]; then
    fa_github_open
  fi
}
