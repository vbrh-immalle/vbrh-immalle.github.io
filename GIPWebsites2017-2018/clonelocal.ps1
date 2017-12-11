$repos = @(
    @{githubName="liamb-immalle"; repoUrl="https://github.com/LiamB-immalle/GIPsite"},
    @{githubName="woutdev"; repoUrl="https://github.com/WoutDev/woutdev.github.io"},
    @{githubName="billyd-immalle"; repoUrl="https://github.com/BillyD-immalle/BillyD-immalle.github.io"},
    @{githubName="tomh-immalle"; repoUrl="https://github.com/TomH-immalle/GIP-site"},
    @{githubName="loesk-immalle"; repoUrl="https://github.com/LoesK-immalle/GipSite"},
    @{githubName="karamk-immalle"; repoUrl="https://github.com/karamk-immalle/GIPsite"},
    @{githubName="timourm-immalle"; repoUrl="https://github.com/timourM-immalle/GIPMeeusenTimour_Website"},
    @{githubName="scheperse-immalle"; repoUrl="https://github.com/scheperse-immalle/scheperse-immalle.Github.io"},
    @{githubName="michielve-immalle.github.io"; repoUrl="https://github.com/MichielVE-immalle/GIPwebsite"},
    @{githubName="mathiasv-immalle.github.io"; repoUrl="https://github.com/MathiasV-immalle/GipSite-6ITNnr10"}
)

$repos | foreach { git clone $_.repoUrl $_.githubName }