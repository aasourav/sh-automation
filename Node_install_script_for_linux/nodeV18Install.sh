#bin/bash
downloadLink="https://nodejs.org/dist/v18.16.1/node-v18.16.1-linux-x64.tar.xz"
tarFile="~/Downloads/node-v18.16.1-linux-x64.tar.xz"
extractedTarFile="~/Downloads/node-v18.16.1-linux-x64.tar.xz"
createDir="/usr/local/lib/nodejs"
moveExtractedFileFrom="~/Downloads/node-v18.16.1-linux-x64"
moveExtractedFileTo="/usr/local/lib/nodejs"

eval downloadLink="$downloadLink"
eval tarFile="$tarFile"
eval extractedTarFile="$extractedTarFile"
eval createDir="$createDir"
eval moveExtractedFileFrom="$moveExtractedFileFrom"
eval moveExtractedFileTo="$moveExtractedFileTo"

cd ~/Downloads &&
wget $downloadLink &&
tar -xvf $tarFile &&
sudo mkdir -p $createDir &&
sudo mv $moveExtractedFileFrom $moveExtractedFileTo &&
cd ~ &&
echo "export PATH=/usr/local/lib/nodejs/node-v18.12.1-linux-x64/bin/:\$PATH" >> ~/.profile &&
rm -rf $tarFile &&
rm -rf $extractedTarFile &&
echo "\n\n_____________________________ Node V18 Installation success ___________________" &&
echo "_______________________________ Please reboot your system _______________________" &&
notify-send "Node v18 installation success" "Please reboot your device now" ||
#echo "\n\n_____________________________Installation failed______________________________" &&
notify-send "Node v18 installation failed" "Error" 
