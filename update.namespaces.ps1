$files = Get-ChildItem . *.cs -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace Mavora.CefSharp" } |
	Foreach-Object { $_ -replace "using CefSharp", "using Mavora.CefSharp" } |
	Foreach-Object { $_ -replace '"CefSharp', '"Mavora.CefSharp' } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.h -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace Mavora::CefSharp" } |
	Foreach-Object { $_ -replace "using namespace CefSharp", "using namespace Mavora::CefSharp" } |
	Foreach-Object { $_ -replace '"CefSharp', '"Mavora.CefSharp' } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.cpp -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace Mavora::CefSharp" } |
	Foreach-Object { $_ -replace "using namespace CefSharp", "using namespace Mavora::CefSharp" } |
	Foreach-Object { $_ -replace '"CefSharp', '"Mavora.CefSharp' } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.csproj -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "<Name>CefSharp", "<Name>Mavora.CefSharp" } |
	Foreach-Object { $_ -replace "<RootNamespace>CefSharp", "<RootNamespace>Mavora.CefSharp" } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.vcxproj -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "<TargetName>CefSharp", "<TargetName>Mavora.CefSharp" } |
	Foreach-Object { $_ -replace "<RootNamespace>CefSharp", "<RootNamespace>Mavora.CefSharp" } |
    Set-Content $file.PSPath
}