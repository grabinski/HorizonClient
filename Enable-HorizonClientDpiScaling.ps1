$registryPath = "HKCU:\software\vmware, inc.\vmware vdm\client"
$Name = "EnableSessionDPIScaling"
$propertyType = "DWORD"
$value = "1"

New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType $propertyType