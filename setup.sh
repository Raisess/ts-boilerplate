#! /bin/sh

read -p "Are u sure about that [y/n]: " opt

if [ $opt = "y" ]; then
	echo "Installing dev dependencies..."
	npm run install
	echo "Installation completed!"

	echo "Removing template git history..."
	rm -rf ./.git
	echo "Git history removed!"

	echo "Deleting setup file..."
	rm ./setup.sh
	echo "Setup file deleted!"
	echo "Setup completed!"
else
	echo "Ok!"
fi
