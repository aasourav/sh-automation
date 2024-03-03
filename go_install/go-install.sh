#!/bin/bash

GO_VERSION=$(curl -sSL https://golang.org/VERSION?m=text | grep go)
DOWNLOAD_URL="https://golang.org/dl/${GO_VERSION}.linux-amd64.tar.gz"
echo "Latest Go version: $GO_VERSION"
echo "Download URL: $DOWNLOAD_URL"
curl -OL "$DOWNLOAD_URL"
sha256sum "${GO_VERSION}.linux-amd64.tar.gz"
sudo tar -C /usr/local -xvf "${GO_VERSION}.linux-amd64.tar.gz"
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
rm "${GO_VERSION}.linux-amd64.tar.gz"
echo "Go has been successfully installed on your machine with version $GO_VERSION."
echo "Please reboot your system to apply changes."

