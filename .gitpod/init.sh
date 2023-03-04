# /bin/bash

echo INIT

psql -U gitpod -c "ALTER USER gitpod WITH PASSWORD '!soCHisi2023!';"

cd /workspace/decider
source venv/bin/activate
python -m app.utils.db.actions.full_build [--config CONF]: /jsons/source → DB
python initial_setup.py
