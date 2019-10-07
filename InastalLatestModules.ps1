[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"; 

#Get modules.json
$modulesJsonUrl = "https://raw.githubusercontent.com/VirtoCommerce/vc-modules/master/modules.json";
$modulesJson = "";
$modulesJson = Invoke-WebRequest -Uri $modulesJsonUrl -UseBasicParsing | ConvertFrom-Json;

#Install modules
$modulesJson | foreach {
    If(($_.groups -ne $nul) -and ($_.groups.Contains("commerce")))
    {
        $moduleId = $_.id;
        $packageUrl = $_.packageUrl;
        $version = $_.version;
        $fileName=($moduleId + "_" + $version + ".zip");

        Invoke-WebRequest -OutFile $fileName -Uri $packageUrl;
        Expand-Archive $fileName -DestinationPath $moduleId;
        Remove-Item $fileName; 
    }
}





