# /bin/bash

echo BEFORE

pyenv install 3.8.10

cd /workspace/decider
pip install --upgrade pip
pip install -r requirements.txt -r requirements_dev.txt
pre-commit install
