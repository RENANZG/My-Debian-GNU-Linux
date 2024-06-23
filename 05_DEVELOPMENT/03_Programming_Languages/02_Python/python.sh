#!/bin/bash

echo "Welcome to Python Development Environment Setup Script!"
echo "Please select an option:"
echo "1. Create virtual environment using virtualenv"
echo "2. Create virtual environment using python3-venv (built-in)"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "Installing Python and pip..."
        sudo apt update
        sudo apt install -y python3 python3-pip
        
        echo "Installing common development tools..."
        sudo apt install -y git curl wget build-essential
        
        echo "Installing Python development packages..."
        sudo apt install -y python3-dev libssl-dev libffi-dev
        
        echo "Upgrading pip and setuptools..."
        sudo pip3 install --upgrade pip setuptools
        
        echo "Installing additional Python packages..."
        sudo pip3 install numpy pandas matplotlib requests flask django \
                         cython black attrs singledispatch tox flake8 mypy
        
        echo "Installing virtualenv..."
        sudo pip3 install virtualenv
        
        read -p "Enter the name for your virtual environment: " venv_name
        
        echo "Creating virtual environment '$venv_name' using virtualenv..."
        virtualenv -p python3 $venv_name
        
        echo "Virtual environment '$venv_name' created."
        echo "Activate it using 'source $venv_name/bin/activate'."
        ;;
    2)
        echo "Installing Python and pip..."
        sudo apt update
        sudo apt install -y python3 python3-venv python3-pip
        
        echo "Installing common development tools..."
        sudo apt install -y git curl wget build-essential
        
        echo "Installing Python development packages..."
        sudo apt install -y python3-dev libssl-dev libffi-dev
        
        echo "Upgrading pip and setuptools..."
        sudo pip3 install --upgrade pip setuptools
        
        echo "Installing additional Python packages..."
        sudo pip3 install numpy pandas matplotlib requests flask django \
                         cython black attrs singledispatch tox flake8 mypy
        
        read -p "Enter the name for your virtual environment: " venv_name
        
        echo "Creating virtual environment '$venv_name' using python3-venv..."
        python3 -m venv $venv_name
        
        echo "Virtual environment '$venv_name' created."
        echo "Activate it using 'source $venv_name/bin/activate'."
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "Explanation of installed Python packages:"
echo "------------------------------------------"
echo "numpy: Numerical computing library for Python."
echo "pandas: Data analysis library for Python."
echo "matplotlib: Plotting library for Python."
echo "requests: HTTP library for Python."
echo "flask: Web framework for Python."
echo "django: Web framework for Python (full-stack)."
echo "cython: Optimizing static compiler for Python."
echo "black: Python code formatter."
echo "attrs: Python package for creating classes without boilerplate."
echo "singledispatch: Library for generic functions in Python."
echo "tox: Automation tool for testing Python code in multiple environments."
echo "flake8: Tool for enforcing Python style guide (PEP 8) and checking for linting errors."
echo "mypy: Optional static type checker for Python."

echo "Installation completed successfully!"
