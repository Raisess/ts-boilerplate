#! /bin/sh

read -p "Are u sure about that? [y/n]: " opt

if [ $opt = "y" ]; then
	echo "Installing dev dependencies..."
	npm install
	echo "Installation completed!"

	echo "Removing template git history..."
	rm -rf ./.git
	echo "Git history removed!"

	echo "Initing a new git local repository..."
	git init
	git checkout -b main
	git branch -d master

	# add remote
	read -p "You want to add a remote repository? [y/n]: " rem
	if [ $rem = "y" ]; then
		read -p "Remote uri: " $rl
		git remote add origin $rl
		echo "Added remote repository connection"
	fi
	echo "Git started!"

	echo "Deleting setup file..."
	rm ./setup.sh
	echo "Setup file deleted!"
	echo "Setup completed!"
else
	echo "Ok!"
fi
