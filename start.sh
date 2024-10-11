#!/bin/bash

# Backend setup
cd backend
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

# Frontend setup
cd ../
npm install # or use yarn install

# Environment variable
export OPENAI_API_KEY=[your key]

# Run applications (You might need to use tmux or a similar tool to run these in parallel)
# For backend
(cd backend && flask run) &

# For frontend
(cd frontend && npm start) &
wait
