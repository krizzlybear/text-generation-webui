#!/bin/bash

venv_name=".venv"
if [ -d "$venv_name" ]; then
    echo "Virtual environment '$venv_name' already exists."
else
    echo "Creating virtual environment '$venv_name'..."
    python3 -m venv "$venv_name"
fi
echo "Activating virtual environment..."
source "$venv_name/bin/activate"

pip install -U flask_cloudflared
pip install -r ./requirements.txt
pip install -r ./extensions/elevenlabs_tts/requirements.txt

#python server.py --wbits 4 --groupsize 128 --public-api --verbose --chat --auto-devices --share --extensions elevenlabs_tts api
echo "Successfully installed API, ready to start using oobabooga_run.sh"