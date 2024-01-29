#!/bin/bash

# Update package lists
sudo apt update

# Install .NET SDK 8.0
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Install SDK
sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0

# Install runtime
sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-8.0
sudo apt-get install -y dotnet-runtime-8.0

#Install .NET Framework
dotnet tool install --global dotnet-ef

#Install SQL Server 2022
sudo wget "https://packages.microsoft.com/config/ubuntu/20.04/msql-server-2022.list"
sudo apt update
sudoa apt install -y mysql-server

# Install Git
sudo apt install -y git

# Clone repository van Bing-Maps-Fleet-Tracker
git clone https://github.com/looking4ward/Bing-Maps-Fleet-Tracker.git

# Build Backend van FTS net dotnet CLI
cd Bing-Maps-Fleet-Tracker/Backend
dotnet build
