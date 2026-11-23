# GitHub
K0K0SH@'s GitHub scripts and crawlers
   
## CRAWLING GITHUB WITH GH (OFFICIAL METHOD) 
https://docs.github.com/en/rest/quickstart?apiVersion=2026-03-10
  Sometimes, you may want to clone all repos from a specific GitHub account. If you're the owner of the repo, GitHub gives you an official way to access all your repos via command-line API. However, GitHub doesn't seem to want you to crawl other people's repos automatically. Therefore, the official support for repo-crawling requires the user to download gh and authenticate themselves via token. Tokens can be created at https://github.com/settings/tokens
  The official (GH) method requires the user to install GH. On Windows, you can use choco install GH. On Linux, you can install it with your package manager. Then, you need to set up your account with the following command.
(configure your authentication settings as the prompts require):
```shell
gh auth login
```
Ensure you're authenticated by running:
```shell
gh auth status
```
Now you can get a list of all the repo URLs under your account as a comma-separated list 
(TESTED ON POWERSHELL 11/22/2026):
```shell
gh repo list --limit 1000 --json url -q '[.[].url]'
```
Or you could get the URLs as raw JSON:
```shell
gh repo list --limit 1000 --json url
```
Or you could get the repo names as a comma-separated list:
```shell
gh repo list --limit 1000 --json name -q '[.[].name]'
```
Or you could get the repo names as raw JSON
```shell
gh repo list --limit 1000 --json name
```

## TODO:   
-create a GH repo list wrapper in Python and Lua  
-Connect GH repo list wrapper into git clone  

## NOTES:
```Lua
cmdstr = ""
base_command = "gh repo list",
limit = 1000,
property = "url",
raw_JSON = false 
```
