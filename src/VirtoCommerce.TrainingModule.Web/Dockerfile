#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
RUN apt-get update
RUN apt-get -yq install wget \
    && apt-get -yq install unzip

RUN mkdir /opt/virtocommerce/ \
    && mkdir /opt/virtocommerce/platform/ \
    && mkdir /opt/virtocommerce/platform/Modules

RUN ln -s /app /opt/virtocommerce/platform/Modules/VirtoCommerce.TrainingModule

RUN wget -q "https://github.com/VirtoCommerce/vc-platform/releases/download/3.0.0-rc.5.250/VirtoCommerce.Platform.3.0.0-rc.5.250.zip" \
    && unzip -q VirtoCommerce.Platform.3.0.0-rc.5.250.zip -d /opt/virtocommerce/platform \
    && rm VirtoCommerce.Platform.3.0.0-rc.5.250.zip

WORKDIR /opt/virtocommerce/platform/Modules

RUN wget -q "https://github.com/VirtoCommerce/vc-module-tax/releases/download/3.0.1/VirtoCommerce.Tax_3.0.1.zip" && unzip -q VirtoCommerce.Tax_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Tax && rm VirtoCommerce.Tax_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-subscription/releases/download/3.0.2/VirtoCommerce.Subscription_3.0.2.zip" && unzip -q VirtoCommerce.Subscription_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Subscription && rm VirtoCommerce.Subscription_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-sitemaps/releases/download/3.0.1/VirtoCommerce.Sitemaps_3.0.1.zip" && unzip -q VirtoCommerce.Sitemaps_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Sitemaps && rm VirtoCommerce.Sitemaps_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-notification/releases/download/3.0.2/VirtoCommerce.Notifications_3.0.2.zip" && unzip -q VirtoCommerce.Notifications_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Notifications && rm VirtoCommerce.Notifications_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-marketing/releases/download/3.0.2/VirtoCommerce.Marketing_3.0.2.zip" && unzip -q VirtoCommerce.Marketing_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Marketing && rm VirtoCommerce.Marketing_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-lucene-search/releases/download/3.0.1/VirtoCommerce.LuceneSearch_3.0.1.zip" && unzip -q VirtoCommerce.LuceneSearch_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.LuceneSearch && rm VirtoCommerce.LuceneSearch_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-inventory/releases/download/3.0.2/VirtoCommerce.Inventory_3.0.2.zip" && unzip -q VirtoCommerce.Inventory_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Inventory && rm VirtoCommerce.Inventory_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-image-tools/releases/download/3.0.2/VirtoCommerce.ImageTools_3.0.2.zip" && unzip -q VirtoCommerce.ImageTools_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.ImageTools && rm VirtoCommerce.ImageTools_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-elastic-search/releases/download/3.0.2/VirtoCommerce.ElasticSearch_3.0.2.zip" && unzip -q VirtoCommerce.ElasticSearch_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.ElasticSearch && rm VirtoCommerce.ElasticSearch_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-content/releases/download/3.0.2/VirtoCommerce.Content_3.0.2.zip" && unzip -q VirtoCommerce.Content_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Content && rm VirtoCommerce.Content_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-catalog/releases/download/3.0.2/VirtoCommerce.Catalog_3.0.2.zip" && unzip -q VirtoCommerce.Catalog_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Catalog && rm VirtoCommerce.Catalog_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-export/releases/download/3.0.1/VirtoCommerce.Export_3.0.1.zip" && unzip -q VirtoCommerce.Export_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Export && rm VirtoCommerce.Export_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-search/releases/download/3.0.2/VirtoCommerce.Search_3.0.2.zip" && unzip -q VirtoCommerce.Search_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Search && rm VirtoCommerce.Search_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-azure-search/releases/download/3.0.1/VirtoCommerce.AzureSearch_3.0.1.zip" && unzip -q VirtoCommerce.AzureSearch_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.AzureSearch && rm VirtoCommerce.AzureSearch_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-core/releases/download/3.0.2/VirtoCommerce.Core_3.0.2.zip" && unzip -q VirtoCommerce.Core_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Core && rm VirtoCommerce.Core_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-customer/releases/download/3.0.2/VirtoCommerce.Customer_3.0.2.zip" && unzip -q VirtoCommerce.Customer_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Customer && rm VirtoCommerce.Customer_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-order/releases/download/3.0.3/VirtoCommerce.Orders_3.0.3.zip" && unzip -q VirtoCommerce.Orders_3.0.3.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Orders && rm VirtoCommerce.Orders_3.0.3.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-cart/releases/download/3.0.2/VirtoCommerce.Cart_3.0.2.zip" && unzip -q VirtoCommerce.Cart_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Cart && rm VirtoCommerce.Cart_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-shipping/releases/download/3.0.1/VirtoCommerce.Shipping_3.0.1.zip" && unzip -q VirtoCommerce.Shipping_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Shipping && rm VirtoCommerce.Shipping_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-payment/releases/download/3.0.1/VirtoCommerce.Payment_3.0.1.zip" && unzip -q VirtoCommerce.Payment_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Payment  && rm VirtoCommerce.Payment_3.0.1.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-store/releases/download/3.0.2/VirtoCommerce.Store_3.0.2.zip" && unzip -q VirtoCommerce.Store_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Store && rm VirtoCommerce.Store_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-pricing/releases/download/3.0.2/VirtoCommerce.Pricing_3.0.2.zip" && unzip -q VirtoCommerce.Pricing_3.0.2.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.Pricing && rm VirtoCommerce.Pricing_3.0.2.zip
RUN wget -q "https://github.com/VirtoCommerce/vc-module-catalog-csv-import/releases/download/3.0.1/VirtoCommerce.CatalogCsvImportModule_3.0.1.zip" && unzip -q VirtoCommerce.CatalogCsvImportModule_3.0.1.zip -d /opt/virtocommerce/platform/Modules/VirtoCommerce.CatalogCsvImportModule && rm VirtoCommerce.CatalogCsvImportModule_3.0.1.zip

WORKDIR /opt/virtocommerce/platform
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["src/VirtoCommerce.TrainingModule.Web/VirtoCommerce.TrainingModule.Web.csproj", "src/VirtoCommerce.TrainingModule.Web/"]
COPY ["src/VirtoCommerce.TrainingModule.Core/VirtoCommerce.TrainingModule.Core.csproj", "src/VirtoCommerce.TrainingModule.Core/"]
COPY ["src/VirtoCommerce.TrainingModule.Data/VirtoCommerce.TrainingModule.Data.csproj", "src/VirtoCommerce.TrainingModule.Data/"]
RUN dotnet restore "src/VirtoCommerce.TrainingModule.Web/VirtoCommerce.TrainingModule.Web.csproj"
COPY . .
WORKDIR "/src/src/VirtoCommerce.TrainingModule.Web/"
RUN dotnet build "VirtoCommerce.TrainingModule.Web.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "VirtoCommerce.TrainingModule.Web.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "VirtoCommerce.TrainingModule.Web.dll"]