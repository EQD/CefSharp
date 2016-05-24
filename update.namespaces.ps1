$configFiles = Get-ChildItem . *.cs -rec
foreach ($file in $configFiles)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace Mavora.CefSharp" } |
	Foreach-Object { $_ -replace '"CefSharp', '"Mavora.CefSharp' } |
    Set-Content $file.PSPath
}