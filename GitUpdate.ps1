workflow UpdateFromGit
{
    param (
    [string]$RepoPath
    )
    InlineScript 
    {
        $RepoPath = $using:Repopath
        Set-Location -Path $RepoPath
        $a = & 'C:\Program Files (x86)\git\bin\git.exe' pull
        if ($a)
        {
            #Something changed, iterate each script
            $gitscripts = get-childitem -Path (Get-Location) -Recurse | where {$_.Extension -eq "ps1"}
            Write-Output $gitscripts
        
        }
    
    }

}