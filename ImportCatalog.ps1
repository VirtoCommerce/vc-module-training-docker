$user = "admin"
$pass = "store"
$UrlServer = "http://localhost"
$UriToken = "$UrlServer/token"
$UriImport = "$UrlServer/api/platform/sampledata/import?url=http:%2F%2Fvirtocommerce.blob.core.windows.net%2Fsample-data%2Fclothing-and-electronics_2_13_47.zip"

$Body = @{
    grant_type = "password"
    username   = $user
    password   = $pass
    client_id  = "web"
}
$Result = Invoke-RestMethod -Uri $UriToken -Method Post -Body $Body
$AuthValue = "Bearer $($Result.access_token)"
$Headers = @{ Authorization = $AuthValue}
Invoke-RestMethod -Method Post -Uri $UriImport -Headers $Headers