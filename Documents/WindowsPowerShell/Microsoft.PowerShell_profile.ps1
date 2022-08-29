$ENV:STARSHIP_CONFIG = "$HOME\AppData\Local\starship\starship.toml"

Invoke-Expression (&starship init powershell)

function dtf([string]$testName)
{
    dotnet test --filter "FullyQualifiedName~$testName"
}

function nvimdf()
{
    git --git-dir="$HOME/AppData/Local" --work-tree="$HOME" $Args
}

function dotfiles()
{
    git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" $Args
}

function tf()
{
    terraform $Args
}
