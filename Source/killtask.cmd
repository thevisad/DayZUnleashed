PowerShell -NoProfile -NonInteractive -Command "Get-Process | Where-Object {$_.Path -like "'D:\arma2dev*'"} | Stop-Process -WhatIf"

pause