$projectDir = "C:\Users\Evans\Documents\Projects\"

function Is-Node {
    $response = Read-Host "`nIs this a Node project? (y/N): "

    if ($response -like "y") {
        return $True
    } else {
        return $False
    }
}

function Start-Project($project) {
    if ($project -eq $Null) {
        Write-Host "`n⚠️  Please provide a project name to scaffold!`n"
        return
    }

    $isNode = Is-Node

    Write-Host "`n🛠️  Creating folder with the name: $project"
    New-Item -ItemType directory -Path $project; Set-Location $project
    
    Write-Host "`n🏁  Running 'git init'`n"
    git init

    Write-Host $'\n📕  Adding README.md file\n'
    "# $project" | Set-Content 'README.md'
    
    if ($isNode -eq $True) {
        Write-Host "`n🏃🏾  running 'npm init -y'`n"
        npm init -y
    }

    Write-Host "`n📕  Project root: $projectDir$project"

    Write-Host "`n✏️  Launching Visual Studio Code`n"
    code .

    Write-Host "`n🎉  Happy coding!`n"

}