[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"; 

# VirtoCommerce.Cache
$repo="vc-module-cache";
$moduleId="VirtoCommerce.Cache";
$version="1.0.19";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Cart
$repo="vc-module-cart";
$moduleId="VirtoCommerce.Cart";
$version="2.17.0";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.Catalog
$repo="vc-module-catalog";
$moduleId="VirtoCommerce.Catalog";
$version="2.23.21";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.CatalogCsvImportModule
$repo="vc-module-catalog-csv-import";
$moduleId="VirtoCommerce.CatalogCsvImportModule";
$version="1.1.4";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.CatalogPersonalization
$repo="vc-module-catalog-personalization";
$moduleId="VirtoCommerce.CatalogPersonalization";
$version="1.1.2";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.CatalogPublishing
$repo="vc-module-catalog-publishing";
$moduleId="VirtoCommerce.CatalogPublishing";
$version="1.1.5";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.Content
$repo="vc-module-content";
$moduleId="VirtoCommerce.Content";
$version="2.13.10";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.Core
$repo="vc-module-core";
$moduleId="VirtoCommerce.Core";
$version="2.25.26";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName; 

# VirtoCommerce.Customer
$repo="vc-module-customer";
$moduleId="VirtoCommerce.Customer";
$version="2.14.21";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.DynamicExpressions
$repo="vc-module-dynamic-expressions";
$moduleId="VirtoCommerce.DynamicExpressions";
$version="2.13.3";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Export
$repo="vc-module-export";
$moduleId="VirtoCommerce.Export";
$version="2.1.1";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.ImageTools
$repo="vc-module-image-tools";
$moduleId="VirtoCommerce.ImageTools";
$version="1.2.1";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Inventory
$repo="vc-module-inventory";
$moduleId="VirtoCommerce.Inventory";
$version="2.13.5";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;


# VirtoCommerce.LuceneSearch
$repo="vc-module-lucene-search";
$moduleId="VirtoCommerce.LuceneSearch";
$version="1.1.0";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Marketing
$repo="vc-module-marketing";
$moduleId="VirtoCommerce.Marketing";
$version="2.17.6";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Orders
$repo="vc-module-order";
$moduleId="VirtoCommerce.Orders";
$version="2.17.24";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Pricing
$repo="vc-module-pricing";
$moduleId="VirtoCommerce.Pricing";
$version="2.18.7";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Quote
$repo="vc-module-quote";
$moduleId="VirtoCommerce.Quote";
$version="2.12.0";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName "https://github.com/VirtoCommerce/vc-module-quote/releases/download/v2.12/VirtoCommerce.Quote_2.12.0.zip";
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;


# VirtoCommerce.Sitemaps
$repo="vc-module-sitemaps";
$moduleId="VirtoCommerce.Sitemaps";
$version="1.1.6";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Store
$repo="vc-module-store";
$moduleId="VirtoCommerce.Store";
$version="2.13.8";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;

# VirtoCommerce.Subscription
$repo="vc-module-subscription";
$moduleId="VirtoCommerce.Subscription";
$version="1.1.10";
$fileName=($moduleId + "_" + $version + ".zip");
Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName);
Expand-Archive $fileName -DestinationPath $moduleId;
Remove-Item $fileName;