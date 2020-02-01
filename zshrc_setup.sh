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
	cp ./.zshrc ~/.zshrc
	echo "Installation completed. Log out and back in for changes to take effect"
fi
