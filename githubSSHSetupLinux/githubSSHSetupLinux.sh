#!/bin/bash
link="https://github.com/settings/ssh/new"
read -p "Enter your email: " email
eval githubSSHCMD=("ssh-keygen" "-t" "ed25519" "-C" "$email")
"${githubSSHCMD[@]}"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo ""
echo "=======COPY the key from below and paste it in gitgub======="
echo "==Do fast you browser will open automatically within 10sec=="
echo "==========and open Github.com paste your key  there========="
echo ""
cat ~/.ssh/id_ed25519.pub
sleep 10
xdg-open "$link"




