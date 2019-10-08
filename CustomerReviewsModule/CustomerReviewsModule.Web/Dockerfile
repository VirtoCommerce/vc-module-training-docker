#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM virtocommerce/platform:latest
ARG source

# Create folder for powershel scripts and new module folder
#RUN mkdir c:\\ps & mkdir c:\\vc-platform\\modules\\customerreviewsmodule
RUN powershell.exe -Command \
    New-Item -ItemType directory -Path c:\ps ;\
    New-Item -ItemType directory -Path c:\\vc-platform\\modules\\customerreviewsmodule ;

#Copy script for VC latest versions modules install
COPY InstallLatestModules.ps1 c:\\ps

# Run script for latest VC modules download and install 
WORKDIR /vc-platform/Modules
RUN powershell.exe -executionpolicy bypass c:\\ps\\InstallLatestModules.ps1 

# Set new module folder as a working folder
WORKDIR /vc-platform/modules/customerreviewsmodule
