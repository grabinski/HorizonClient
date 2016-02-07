$registryPropertyValue = @{
	Path = "HKCU:\SOFTWARE\VMware, Inc.\VMWare VDM\Client"
	Name = "EnableSessionDPIScaling"
	PropertyType = "DWord"
	Value = "1"
}

New-ItemProperty @registryPropertyValue
