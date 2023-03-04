# /bin/bash

echo INIT


psql -U gitpod -c "SELECT 1 FROM pg_database WHERE datname = 'decider'" | grep -q 1 || psql -U gitpod -c "CREATE DATABASE decider"
psql -U gitpod -c "ALTER USER gitpod WITH PASSWORD 'GitPod00!#';"

cd /workspace/decider
source venv/bin/activate
# python initial_setup.py
python -m app.utils.db.actions.full_build [--config CONF]: /jsons/source → DB
