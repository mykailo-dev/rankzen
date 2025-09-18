#!/bin/bash
cd /var/www/rankzen
source /var/www/rankzen/.venv/bin/activate
export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
python /var/www/rankzen/run_rankzen.py
