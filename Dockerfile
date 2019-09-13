# escape=`
#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat 

FROM virtocommerce/platform 

ARG source
# Folder for powershel scripts
RUN mkdir c:\ps

# Download and install remote debugger
EXPOSE 4020 4021
RUN Invoke-WebRequest -OutFile c:\vs_remotetools.exe -Uri https://aka.ms/vs/16/release/RemoteTools.amd64ret.enu.exe; `
& 'c:\vs_remotetools.exe' /install /quiet /norestart


# Download and install VC modules
WORKDIR /vc-platform/Modules
COPY InstallModules.ps1 c:\ps
RUN powershell.exe -executionpolicy bypass c:\ps\InstallModules.ps1 


# Create new module folder
RUN mkdir c:\vc-platform\modules\customerreviewsmodule
WORKDIR /vc-platform/modules/customerreviewsmodule

#Copy endpoint script
COPY startup.ps1 c:\ps

# Import sample data 
#COPY ImportCatalog.ps1 c:\ps
#RUN powershell.exe -executionpolicy bypass c:\ps\ImportCatalog.ps1
