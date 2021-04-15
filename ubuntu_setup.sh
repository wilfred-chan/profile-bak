sudo apt-get update
sudo apt-get upgrade
echo Y | sudo apt-get remove vim.tiny
echo Y | sudo apt-get install vim
echo Y | sudo apt-get install git

sudo apt install zsh
chsh -s $(which zsh)
# relogin to use zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# git config
ssh-keygen -t ed25519 -C "YOUR_EMAIL_HERE"
ssh-add ~/.ssh/id_ed25519
git config --global user.name "Wilfred-Chan"
git config --global user.email "69495364+wilfred-chan@users.noreply.github.com"

# appearance
# gnome extension
echo Y | sudo apt install gnome-tweak-tool
# font
echo Y | sudo apt install fonts-firacode
