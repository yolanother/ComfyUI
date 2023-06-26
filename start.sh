#!/bin/bash

# Change the directory to the script's directory
cd "$(dirname "$0")"

# Print the current working directory
echo "Current working directory: $(pwd)"

source venv/bin/activate
pip install -r requirements.txt
venv/bin/python3 main.py --listen 0.0.0.0 --port 8180 --cpu
