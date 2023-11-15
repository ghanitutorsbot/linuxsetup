#!/bin/bash

# Update package lists
sudo apt-get update

# Install OpenJDK 8
sudo apt-get install -y openjdk-8-jdk

# Install OpenJDK 11
sudo apt-get install -y openjdk-11-jdk

# Configure Java alternatives
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8-openjdk-amd64/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac 100

# Set Java 8 as the default version
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac

# Verify Java version
java -version
javac -version
