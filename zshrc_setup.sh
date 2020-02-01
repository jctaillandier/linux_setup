echo "Installing Oh-My-Zsh..."

if [ $SHELL="/usr/bin/zsh" ]
then
	echo "zshrc already setup as shell"
fi
if [ $SHELL != "/usr/bin/zsh" ]
then
	sudo apt-get install zsh
	echo "Shell installed"
	echo "Copying template zshrc from repo..."
	wget https://raw.githubusercontent.com/jctaillandier/ubuntu_setup/master/.zshrc?token=AHT7UAVFH4BSZIYPOV2FUMC6H36EW
fi
