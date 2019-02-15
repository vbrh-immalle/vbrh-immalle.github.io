$repos = @(
    @{githubName="vbrh-immalle"; repoUrl="https://github.com/vbrh-immalle/vbrh-immalle.github.io"}
    # TODO: voeg je eigen site toe:
    @{githubName="MarcinK-immalle";},
    
)

$repos | foreach { git clone $_.repoUrl $_.githubName }
