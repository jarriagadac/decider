# /bin/bash

echo BEFORE

pyenv install 3.8.10
pyenv local 3.8.10

cd /workspace/decider

python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt -r requirements_dev.txt
pre-commit install
