#!/bin/bash

set -e


# Function to install Ballerina
install_ballerina() {
    echo "Installing Ballerina"
    curl -Lo ballerina-2201.11.0-SNAPSHOT-swan-lake-linux-x64.deb https://github.com/hevayo/bi-devcontainer/releases/download/v0.9.0/ballerina-2201.11.0-SNAPSHOT-swan-lake-linux-x64.deb
    sudo dpkg -i ballerina-2201.11.0-SNAPSHOT-swan-lake-linux-x64.deb
    rm ballerina-2201.11.0-SNAPSHOT-swan-lake-linux-x64.deb
    curl -Lo ballerina-5.0.0.vsix https://github.com/hevayo/bi-devcontainer/releases/download/v0.9.0/ballerina-5.0.0.vsix
    # Copy vsix file to /opt
    sudo cp ballerina-5.0.0.vsix /opt/
    curl -Lo bi-extension-0.0.5.vsix https://github.com/hevayo/bi-devcontainer/releases/download/v0.9.0/bi-extension-0.0.5.vsix
    # Copy ballerina-swan-lake-2201.10.1.vsix to /opt
    sudo cp bi-extension-0.0.5.vsix /opt/
}

# Run the installation function
install_ballerina