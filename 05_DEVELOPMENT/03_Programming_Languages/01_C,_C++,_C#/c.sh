#!/bin/bash

echo "Installing basic environment for C and C++ developers..."

# Update package lists
sudo apt update

# Install essential development tools
sudo apt install -y build-essential

# Install GNU Compiler Collection (GCC) for C and C++
sudo apt install -y gcc g++

# Install CMake (cross-platform build system)
sudo apt install -y cmake

# Install version control system (Git)
sudo apt install -y git

# Install debugger (GDB)
sudo apt install -y gdb

# Install editor (NeoVim)
sudo apt install -y neovim

echo "Installation completed successfully!"
