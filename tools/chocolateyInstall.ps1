$packageName = 'NSClient++'
$url = 'https://github.com/mickem/nscp/releases/download/0.6.9/NSCP-0.6.9-Win32.msi'
$url64 = 'https://github.com/mickem/nscp/releases/download/0.6.9/NSCP-0.6.9-x64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/quiet"
  validExitCodes = @(0)
  checksum       = 'A52B7A6C99FE99A2C668BC6B40295C3E61AF1641A11D46CC1FDECB29CA49AA37'
  checksumType   = 'sha256'
  checksum_64     = '5490A448331DB4915A928B5E783BC1BC7FD67C2768452236AA39C341FF746458'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
