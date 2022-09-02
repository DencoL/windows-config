$ENV:STARSHIP_CONFIG = "$HOME\AppData\Local\starship\starship.toml"

Invoke-Expression (&starship init powershell)

function dtf([string]$testName)
{
    if (-not ([string]::IsNullOrEmpty($testName)))
    {
        dotnet test --filter "FullyQualifiedName~$testName" --logger "console;verbosity=detailed"
    }
    else
    {
        dotnet test --logger "console;verbosity=detailed"
    }
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
