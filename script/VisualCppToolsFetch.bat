@Echo off
Title %CD% - VisualCpp Daily Fetch
if exist "%~dp0..\bin\required_pwsh" (
    where pwsh >nul 2>nul || goto FALLBACK
    pwsh -NoProfile -NoLogo -ExecutionPolicy unrestricted -File  "%~dp0../bin/VisualCppDaily.ps1" %*
    goto :EOF
)

:FALLBACK
PowerShell -NoProfile -NoLogo -ExecutionPolicy unrestricted -File  "%~dp0../bin/VisualCppDaily.ps1" %*
