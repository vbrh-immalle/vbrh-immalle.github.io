$repos = @(
    @{githubName="vbrh-immalle"; repoUrl="https://github.com/vbrh-immalle/vbrh-immalle.github.io"}
    # TODO: voeg je eigen site toe:
    @{githubName="MarcinK-immalle"; repoUrl="https://marcink-immalle.github.io/GIP_Site/"},
    
)

$repos | foreach { git clone $_.repoUrl $_.githubName }
