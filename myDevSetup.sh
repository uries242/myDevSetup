#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Install Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install Git
echo "Installing Git..."
brew install git

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

# Open Visual Studio Code
echo "Opening Visual Studio Code..."
open -a "Visual Studio Code"

# Install Google Chrome
echo "Installing Google Chrome..."
brew install --cask google-chrome

# Open Google Chrome
echo "Opening Google Chrome..."
open -a "Google Chrome"

# Install Docker
echo "Installing Docker..."
brew install --cask docker

# Start Docker
echo "Starting Docker..."
open -a "Docker"

# Install Flutter
echo "Installing Flutter..."
brew install flutter

# Update PATH for Flutter
echo 'export PATH="$PATH:`flutter doctor --flutter-dir`/bin"' >> ~/.zshrc
source ~/.zshrc

# Install Python 3 and related packages
echo "Installing Python 3..."
brew install python
pip3 install flet
pip3 install mypy
pip install pyqt5
pip3 install selenium
pip3 install requests
pip3 install python-dotenv

# Install Node.js
echo "Installing Node.js..."
brew install node

# Install OpenJDK
echo "Installing OpenJDK..."
brew install openjdk

# Install AWS CLI
if ! command -v aws &>/dev/null; then
    echo "Installing AWS CLI..."
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
    sudo installer -pkg AWSCLIV2.pkg -target /
    rm AWSCLIV2.pkg
else
    echo "AWS CLI is already installed."
fi

# Open AWS CLI
echo "Testing AWS CLI installation..."
aws --version

# Install Tor Browser
echo "Installing Tor Browser..."
brew install --cask tor-browser

# Open Tor Browser
echo "Opening Tor Browser..."
open -a "Tor Browser"

echo "Setup complete! All apps are installed and ready to use."


