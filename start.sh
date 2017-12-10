#!/bin/sh
python /notebooks/server.py &
sh /run_jupyter.sh --allow-root
