#!/usr/bin/python
import zipfile 
import io 
import urllib.request
import json
import zipfile
import shutil

def getZipData(url):
    result = urllib.request.urlopen(url)
    return result.read()

url = 'https://raw.githubusercontent.com/VirtoCommerce/vc-modules/master/modules_v3.json'

response = urllib.request.urlopen(url)
modules = json.load(response)

for module in modules:
    if module["Groups"]:
        if 'commerce' in map(lambda x:x.lower(), module["Groups"]):
            moduleId = module["Id"]
            destinationPath = moduleId
            for version in module["Versions"]:
                if version["VersionTag"] in ["", "preview"]:
                    packageUrl = version["PackageUrl"]
                    zipData = getZipData(packageUrl)
                    zipRef = zipfile.ZipFile(io.BytesIO(zipData))
                    zipRef.extractall(destinationPath)
                    print(moduleId, 'installed')
