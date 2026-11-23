# filename: gh_get_repos.ps1
# this Powershell script gets a list of your account's github repos
# note that this script requires you to have successfully run $(gh auth login) and also create an access token at github.com/settings/tokens 
# Version 0.1 [alpha]

# returns your repos as a comma-separated list
gh repo list --limit 1000 --json url -q '[.[].url]'

# returns your repos as a list of JSON objects
# gh repo list --limit 1000 --json name
