sudo apt-get update
echo Y | sudo apt-get install vim
echo Y | sudo apt-get install git

sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ssh-keygen -t ed25519 -C "69495364+wilfred-chan@users.noreply.github.com"
