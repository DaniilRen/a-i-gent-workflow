$PythonPath = "C:\Users\danb\.pyenv\pyenv-win\versions\3.11.13\envs\openinterpreter-env\Scripts\python.exe"
$ScriptPath = "C:\Users\danb\Code\a-i-gent-workflow\main.py"
$LogPath = "C:\tmp\agent.log"
$BatchFile = "C:\Users\danb\Code\a-i-gent-workflow\run_agent.bat"
$TaskName = "AgentTask"
$ScheduleTime = "2:00PM"

$BatchContent = @"
@echo off
$PythonPath $ScriptPath >> $LogPath 2>&1
"@

$BatchContent | Out-File -FilePath $BatchFile -Force

$Action = New-ScheduledTaskAction -Execute $BatchFile
$Trigger = New-ScheduledTaskTrigger -Daily -At $ScheduleTime
$Principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME -LogonType Interactive

Register-ScheduledTask -TaskName $TaskName -Action $Action -Trigger $Trigger -Principal $Principal -Force

Write-Host "Scheduled task created: $TaskName" -ForegroundColor Green