#!/bin/bash

########################################################################
# File Name    : setup_python_env.sh
# Description  : This script sets up a Python development environment.
# Usage        : • Make the script executable with:
#                sudo chmod +x setup_python_env.sh
#                • Run the script with:
#                sudo bash setup_python_env.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# Define colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# Introduction and User Prompt
echo -e "${BOLD}### Welcome to Python Development Environment Setup Script! ###${NC}\n"
echo -e "${BOLD}Please select an option to create a virtual environment or skip to package installation:${NC}"
echo -e "${GREEN}1. Create a virtual environment using virtualenv (recommended for advanced users, provides extensive features for managing multiple virtual environments and dependencies)${NC}"
echo -e "${YELLOW}2. Create a virtual environment using python3-venv (Python's standard library, making it simple to get started with virtual environments)${NC}"
echo -e "${RED}3. Do not create a virtual environment, installing it globally (Not recommended as it might cause conflicts with other Python projects)${NC}"
echo -e "${YELLOW}4. Skip virtual environment creation and proceed to package installation${NC}"
read -p "Enter your choice (1, 2, 3, or 4): " choice

########################################################################
# • Note for virtualenv:
# virtualenv is a tool to create isolated Python environments. It is
# useful for managing dependencies of different projects separately.
# You only need to install it once globally using 'sudo pip3 install
# virtualenv'.
#
# • Note for python3-venv:
# python3-venv is Python's built-in module for creating virtual
# environments. It's simpler to get started with but may lack some
# advanced features compared to virtualenv.
#
# • Note for global installation:
# Installing packages globally can lead to conflicts between different
# projects that require different versions of the same package. It's
# generally not recommended for Python development.
#
# • Note for virtualenvwrapper:
# virtualenvwrapper is an extension to virtualenv that facilitates
# managing multiple Python virtual environments. It provides commands
# to create, delete, and switch between environments easily. After
# installing virtualenvwrapper, set up environment variables in your
# shell configuration file (e.g., .bashrc):
#   export WORKON_HOME=$HOME/.virtualenvs
#   export VIRTUALENVWRAPPER_PYTHON=/path/to/your/python
#   source /usr/local/bin/virtualenvwrapper.sh  # Adjust as necessary
########################################################################

# Array of Python Packages with Descriptions
declare -A packages=(
    [1]="virtualenvwrapper: Set of extensions to virtualenv for managing multiple virtual environments."
    [2]="numpy: Numerical computing library for Python."
    [3]="cython: Optimizing static compiler for Python."
    [4]="black: Python code formatter."
    [5]="attrs: Python package for creating classes without boilerplate."
    [6]="singledispatch: Library for generic functions in Python."
    [7]="tox: Automation tool for testing Python code in multiple environments."
    [8]="flake8: Tool for enforcing Python style guide (PEP 8) and checking for linting errors."
    [9]="mypy: Optional static type checker for Python."
    [10]="pandas: Data analysis library for Python."
    [11]="matplotlib: Plotting library for Python."
    [12]="seaborn: Statistical data visualization library based on matplotlib."
    [13]="pyarrow: Python library for Apache Arrow."
    [14]="requests: HTTP library for Python."
    [15]="flask: Web framework for Python."
    [16]="django: Web framework for Python (full-stack)."
    [17]="cryptography: Cryptography library for Python."
    [18]="jinja2: Template engine for Python."
    [19]="werkzeug: Comprehensive WSGI web application library."
    [20]="aiohttp: Asynchronous HTTP client/server framework."
    [21]="scipy: Library used for scientific and technical computing."
    [22]="scikit-learn: Machine learning library for Python."
    [23]="urllib3: HTTP client for Python."
    [24]="botocore: Low-level interface to AWS."
    [25]="s3transfer: S3 transfer manager for boto3."
    [26]="aiobotocore: Asyncio support for botocore."
    [27]="iniconfig: Simple parsing of ini files."
    [28]="soupsieve: CSS selector library for BeautifulSoup."
    [29]="mypy: Optional static type checker for Python."
    [30]="pylint: Source code analyzer which looks for programming errors."
    [31]="jupyter: Interactive computing notebooks."
    [32]="notebook: Jupyter interactive notebook library."
    [33]="pytest: Testing framework for Python."
    [34]="sphinx: Documentation generator for Python projects."
    [35]="typing-extensions: Backports of new type system features."
    [36]="setuptools: Library for packaging Python projects."
    [37]="packaging: Core utilities for Python packages."
    [38]="pip: The PyPA recommended tool for installing Python packages."
    [39]="pycparser: C parser in Python."
    [40]="pydantic: Data validation and settings management using Python type annotations."
    [41]="requests-oauthlib: OAuthlib support for Python-requests."
    [42]="exceptiongroup: Utilities for exception groups."
    [43]="jsonschema: JSON Schema validation library."
    [44]="yarl: Yet another URL library."
    [45]="pypular: Popularity contest library for Python."
    [46]="greenlet: Lightweight in-process concurrent programming."
    [47]="distlib: Low-level components for Python packaging."
    [48]="certifi: Python package for providing Mozilla's CA Bundle."
    [49]="idna: Support for the Internationalized Domain Names in Applications (IDNA)."
    [50]="charset-NCizer: Charset detection library."
    [51]="python-dateutil: Extensions to the standard datetime module."
    [52]="wheel: Built-package format for Python."
    [53]="pyyaml: YAML parser and emitter for Python."
    [54]="six: Python 2 and 3 compatibility library."
    [55]="grpcio-status: Status library for gRPC."
    [56]="cffi: Foreign Function Interface for Python calling C code."
    [57]="google-api-core: Google API client core library."
    [58]="importlib-metadata: Library to access the metadata for a Python package."
    [59]="pyasn1: ASN.1 library for Python."
    [60]="rsa: Pure-Python RSA implementation."
    [61]="zipp: Backport of pathlib-compatible object wrapper for zip files."
    [62]="click: Python package for creating command-line interfaces."
    [63]="protobuf: Protocol Buffers for Python."
    [64]="jmespath: JSON Matching Expressions library."
    [65]="platformdirs: Platform-specific directories for Python."
    [66]="awscli: Universal Command Line Interface for Amazon Web Services."
    [67]="colorama: Cross-platform colored terminal text."
    [68]="markupsafe: Safely add untrusted strings to HTML/XML markup."
    [69]="pyjwt: JSON Web Token implementation in Python."
    [70]="tomli: A lil' TOML parser."
    [71]="googleapis-common-protos: Common Protos for Google APIs."
    [72]="wrapt: Module for decorators, wrappers, and monkey patching."
    [73]="filelock: Platform-independent file locking module."
    [74]="cachetools: Extensible memoizing collections and decorators."
    [75]="google-auth: Google authentication library."
    [76]="pluggy: Plugin and hook calling mechanisms for Python."
    [77]="pytest: Testing framework for Python."
    [78]="oauthlib: Framework for OAuth1 and OAuth2."
    [79]="pyarrow: Python library for Apache Arrow."
    [80]="pyasn1-modules: Collection of ASN.1 data structures for pyasn1."
    [81]="isodate: ISO 8601 date/time/duration parser and formatter."
    [82]="psutil: Process utilities for Python."
    [83]="pydantic-core: Core validation library for pydantic."
    [84]="pygments: Syntax highlighting library."
    [85]="multidict: Multidict implementation for Python."
    [86]="pyopenssl: Python wrapper for OpenSSL."
    [87]="decorator: Library to simplify usage of decorators."
    [88]="tzdata: IANA timezone database for Python."
    [89]="async-timeout: Timeout context manager for asyncio programs."
    [90]="tqdm: Fast, extensible progress bar for Python."
    [91]="grpcio: HTTP/2-based RPC framework."
    [92]="frozenlist: Insertion-order-preserving immutable list."
    [93]="more-itertools: More routines for operating on iterables, beyond itertools."
    [94]="google-cloud-storage: Google Cloud Storage API client library."
    [95]="websocket-client: WebSocket client for Python."
    [96]="annotated-types: Simple library for using annotated types."
    [97]="lxml: Powerful and easy-to-use library for XML and HTML."
    [98]="tomlkit: Style-preserving TOML library."
    [99]="proto-plus: Protocol Buffers for Python."
    [100]="pynacl: Python binding to the Networking and Cryptography library."
    [101]="deprecated: Python @deprecated decorator."
    [102]="azure-core: Core shared library for Azure SDKs."
    [103]="asn1crypto: Fast Python ASN.1 parser and serializer."
)

# Function to install packages
install_packages() {
    for package_name in "${!packages[@]}"; do
        package_description=${packages[$package_name]}
        echo -e "${BOLD}Installing $package_name: $package_description${NC}"
        sudo pip3 install "$package_name"
    done
}

# Create Virtual Environment based on user's choice
case $choice in
    1)
        echo -e "${GREEN}Creating virtual environment using virtualenv...${NC}"
        sudo pip3 install virtualenv
        virtualenv myenv
        source myenv/bin/activate
        ;;
    2)
        echo -e "${YELLOW}Creating virtual environment using python3-venv...${NC}"
        sudo apt-get install python3-venv
        python3 -m venv myenv
        source myenv/bin/activate
        ;;
    3)
        echo -e "${RED}Skipping virtual environment creation and installing packages globally (Not recommended)...${NC}"
        ;;
    4)
        echo -e "${YELLOW}Skipping virtual environment creation and proceeding to package installation...${NC}"
        ;;
    *)
        echo -e "${RED}Invalid choice. Exiting script...${NC}"
        exit 1
        ;;
esac

# Install packages if not skipped
if [ "$choice" -ne 3 ] && [ "$choice" -ne 4 ]; then
    install_packages
else
    install_packages
fi

echo -e "${BOLD}### Python development environment setup complete! ###${NC}"

echo "###########################################"
echo
echo "### References for Python Development ###"
echo "- Python Documentation: https://docs.python.org"
echo "- Python Package Index (PyPI): https://pypi.org"
echo "- Python Enhancement Proposals (PEPs): https://www.python.org/dev/peps/"
echo "- Anaconda Distribution: https://www.anaconda.com"
echo "- Jupyter Notebook: https://jupyter.org"
echo "- NumPy: https://numpy.org"
echo "- Pandas: https://pandas.pydata.org"
echo "- Matplotlib: https://matplotlib.org"
echo "- Requests: https://docs.python-requests.org"
echo "- Beautiful Soup: https://www.crummy.com/software/BeautifulSoup/"
echo "- Flask: https://flask.palletsprojects.com"
echo "- Django: https://www.djangoproject.com"
echo "- SQLAlchemy: https://www.sqlalchemy.org"
echo "- pytest: https://docs.pytest.org"
echo "- PyCharm IDE: https://www.jetbrains.com/pycharm/"
echo "- VS Code with Python Extension: https://code.visualstudio.com"
echo "- PyLint: https://www.pylint.org"
echo "- Python Tutor: http://pythontutor.com"
echo
echo "## Other Online Resources ##"
echo "- Real Python: https://realpython.com"
echo "- Python.org's Beginner Guide: https://wiki.python.org/moin/BeginnersGuide"
echo "- Python Module of the Week: https://pymotw.com/3/"
echo "- Python Programming at Wikibooks: https://en.wikibooks.org/wiki/Python_Programming"
echo "- Full Stack Python: https://www.fullstackpython.com"
echo "- Python for Beginners: https://www.pythonforbeginners.com"
echo "## Books ##"
echo
echo "## Beginner Books ##"
echo "- Head First Python"
echo "- Automate the Boring Stuff with Python"
echo "- Python Crash Course"
echo "- Learning Python (Mark Lutz)"
echo "## Intermediate Books ##"
echo "- Fluent Python"
echo "- Effective Python: 59 Specific Ways to Write Better Python"
echo "- Python Cookbook"
echo "## Advanced Books ##"
echo "- Python in a Nutshell"
echo "- Python for Data Analysis"
echo "- Deep Learning with Python (Francois Chollet)"
echo "- Python Tricks: A Buffet of Awesome Python Features"
echo
echo "###########################################"
