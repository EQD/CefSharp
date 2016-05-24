$files = Get-ChildItem . *.cs -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace MavoraCefSharp" } |
	Foreach-Object { $_ -replace "using CefSharp", "using MavoraCefSharp" } |
	Foreach-Object { $_ -replace '"CefSharp', '"MavoraCefSharp' } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.h -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace MavoraCefSharp" } |
	Foreach-Object { $_ -replace "CefSharp::", "MavoraCefSharp::" } |
	Foreach-Object { $_ -replace "using namespace CefSharp", "using namespace MavoraCefSharp" } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.cpp -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "namespace CefSharp", "namespace MavoraCefSharp" } |
	Foreach-Object { $_ -replace "CefSharp::", "MavoraCefSharp::" } |
	Foreach-Object { $_ -replace "using namespace CefSharp", "using namespace MavoraCefSharp" } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.csproj -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "<Name>CefSharp", "<Name>MavoraCefSharp" } |
	Foreach-Object { $_ -replace "<RootNamespace>CefSharp", "<RootNamespace>MavoraCefSharp" } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.vcxproj -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "<TargetName>CefSharp", "<TargetName>MavoraCefSharp" } |
	Foreach-Object { $_ -replace "<RootNamespace>CefSharp", "<RootNamespace>MavoraCefSharp" } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.manifest -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace 'name="CefSharp', 'name="MavoraCefSharp' } |
    Set-Content $file.PSPath
}

$files = Get-ChildItem . *.xaml -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace 'Class="CefSharp', 'Class="MavoraCefSharp' } |
	Foreach-Object { $_ -replace 'clr-namespace:CefSharp', 'clr-namespace:MavoraCefSharp' } |
    Set-Content $file.PSPath
}