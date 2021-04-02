Function Get-ImmutableID
{
	param (
        [Parameter(Mandatory=$True)]
        [string]$SamName
	)

    $User = Get-ADUser $SamName -Properties ObjectGUID
    $ImmutableID = [system.convert]::ToBase64String(([GUID]($User.ObjectGUID)).tobytearray())
    Write-Host $ImmutableID
}
