#!/bin/bash

# Install Python 3
echo "Installing Python 3..."
brew install python

# Install Google Chrome
echo "Installing Google Chrome..."
brew install --cask google-chrome

# Install Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

# Install Docker
echo "Installing Docker..."
brew install --cask docker

# Install Git
echo "Installing Git..."
brew install git

echo "Installation complete."

