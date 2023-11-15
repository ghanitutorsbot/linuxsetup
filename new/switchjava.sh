#!/bin/bash

# Function to switch between Java versions
switch_java() {
    echo "Choose the Java version to switch:"
    echo "1) Java 8"
    echo "2) Java 11"

    read -p "Enter the number (1 or 2): " choice

    case $choice in
        1)
            echo "Switching to Java 8..."
            sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
            sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
            ;;
        2)
            echo "Switching to Java 11..."
            sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java
            sudo update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac
            ;;
        *)
            echo "Invalid choice. Exiting without switching Java version."
            exit 1
            ;;
    esac

    # Verify the switched Java version
    new_version=$(java -version 2>&1 | awk '/version/ {print $3}' | sed 's/"//g')
    echo "Java version switched to: $new_version"
}

# Call the function to switch between Java versions
switch_java
