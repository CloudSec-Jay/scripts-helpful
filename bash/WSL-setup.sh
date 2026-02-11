!#/bin/bash

set -e #exits the scipts if eror detected
echo "Updating systems and downloadin applications..."

sudo apt update 
sudo apt upgrade -y

# takes an array of apps accoring to their package manger and installs then 

declare -a snap=(
  "lxd"
  "firefox"
  "microk8s --classic"
  "kubectl --classic"
)

declare -a apt=(
   "git"
   "python3-pip"
   "ansible"
)

for pkg in "${apt[@]}" "${snap[@]}"; do
    if [[ " ${apt[@]} " =~ " $pkg " ]]; then
        echo "Installing $pkg with apt"
        sudo apt install -y "$pkg"
    elif [[ " ${snap[@]} " =~ " $pkg " ]]; then
        echo "Installing $pkg with snap"
        sudo snap install "$pkg"
    fi
done


echo "Exporting enviromental variables and initializing applications..."

# gives the current git branch to PS1 and writes variables to .bashrc

cat << 'EOF' >> ~/.bashrc
parse_git_branch() {
  git branch 2>/dev/null | sed -n '/\* /s///p'
}

PS1="\[\e[1;32m\]jay@home-lab\[\e[0m\][\[\e[1;33m\]\t\[\e[0m\]][\[\e[1;34m\]\w\[\e[0m\]][\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]]\$ "
alias kube='microk8s kubectl'
EOF

sudo lxd init --minimal
sudo usermod -aG lxd $(whoami)
newgrp

echo "Setting up home enviorment"
mkdir -p ~/Downloads ~/Scripts ~/Scripts/Ansible ~/Scripts/Terraform ~/Scripts/Python ~/Scripts/Docker

echo "Would you like to init Terraform?"
if read="yes"; do
  cd ~/Scripts/Terrafrom
  Terraform init
else 
fi

source ~/.bashrc
echo "Installation complete!"
