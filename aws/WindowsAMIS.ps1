$regions = (Get-AWSRegion).Region
$windowsversions = "WINDOWS_2008RTM_BASE","WINDOWS_2008R2_BASE","WINDOWS_2012R2_BASE","WINDOWS_2016_BASE"
$credential = "yourawscredential"

foreach($region in $regions)
{
	foreach($windowsversion in $windowsversions)
	{
		Write-Output "$region;$windowsversion;$((Get-EC2ImageByName -ProfileName $credential -Region $region -Names $windowsversion).ImageId )"	
	}	
}

