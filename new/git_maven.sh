#!/bin/bash

# Update package lists
sudo apt-get update

# Install Git
sudo apt-get install -y git

# Install Maven
sudo apt-get install -y maven

# Verify installations
git --version
mvn --version
