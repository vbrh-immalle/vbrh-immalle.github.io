$repos = @(
    @{githubName="vbrh-immalle"; repoUrl="https://github.com/vbrh-immalle/vbrh-immalle.github.io"}
    # TODO: voeg je eigen site toe:
    #@{githubName="vbrh-immalle"; repoUrl="https://github.com/vbrh-immalle/vbrh-immalle.github.io"},
    
)

$repos | foreach { git clone $_.repoUrl $_.githubName }