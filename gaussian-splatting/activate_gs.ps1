@'
. "$PSScriptRoot\venv\Scripts\Activate.ps1"
$env:CUDA_PATH="C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8"
$torchLib = Join-Path $PSScriptRoot "venv\Lib\site-packages\torch\lib"
$env:PATH = "$env:CUDA_PATH\bin;$torchLib;$env:PATH"
'@ | Set-Content -Encoding UTF8 .\activate_gs.ps1
+++--