#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
RUN apt-get update
RUN apt-get -yq install wget \
    && apt-get -yq install unzip \
    && apt-get -yq install python3

RUN mkdir /opt/virtocommerce/ \
    && mkdir /opt/virtocommerce/platform/ \
    && mkdir /opt/virtocommerce/platform/Modules

RUN ln -s /app /opt/virtocommerce/platform/Modules/VirtoCommerce.TrainingModule

RUN wget -q "https://github.com/VirtoCommerce/vc-platform/releases/download/3.0.0-rc.5.250/VirtoCommerce.Platform.3.0.0-rc.5.250.zip" \
    && unzip -q VirtoCommerce.Platform.3.0.0-rc.5.250.zip -d /opt/virtocommerce/platform \
    && rm VirtoCommerce.Platform.3.0.0-rc.5.250.zip

WORKDIR /opt/virtocommerce/platform/Modules

COPY src/VirtoCommerce.TrainingModule.Web/InstallLatestModules.py .

RUN python3 InstallLatestModules.py

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