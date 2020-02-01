echo "Installing Oh-My-Zsh..."
if ["$SHELL"="zshrc"]
then
	echo "zshrc already setup as shell"
fi
if ["$SHELL" != "zshrc"]
then
	sudo apt-get install zsh
	echo "Shell installed"
fi

echo "Copying template zshrc from repo..."
wget 
