#!/bin/bash

echo "Starting MissKaty..."

# delete old sessions (very important)
rm -f *.session
rm -f *.session-journal
rm -rf MissKaty.session
rm -rf misskaty.session

pip install --upgrade pip
pip install -r requirements.txt

python3 update.py && python3 -m misskaty
