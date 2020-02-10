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
	wget https://raw.githubusercontent.com/jctaillandier/ubuntu_setup/master/.zshrc
	/bin/./zsh
	# usermod --shell /bin/zsh $USER # ubuntu mate worked with this
	echo "Installation completed. Log out and back in for changes to take effect"
	if [ ! -d /var/.purpose ]; then
		echo "Think of creating a file in /var/.purpose to have machine purpose at the beginning of signature"
	fi
fi
