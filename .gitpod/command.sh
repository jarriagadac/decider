# /bin/bash

echo COMMAND

cd /workspace/decider
source venv/bin/activate
python3 decider.py --config DevelopmentConfig
