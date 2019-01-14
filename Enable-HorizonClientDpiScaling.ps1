$regPropertyValue = @{
    Path = 'HKCU:\SOFTWARE\VMware, Inc.\VMWare VDM\Client'
    Name = 'EnableSessionDPIScaling'
    Value = '1'
}
$propertyType = 'DWord'

if (Test-Path $regPropertyValue.Path) {
$key = Get-ItemProperty $regPropertyValue.Path
    $value = $key.($regPropertyValue.Name)

    if ($value -eq $null) {
        New-ItemProperty @regPropertyValue -PropertyType $propertyType
    }
    else {
        Set-ItemProperty @regPropertyValue -Type $propertyType -PassThru
    }
}
