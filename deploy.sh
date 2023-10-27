#!/bin/bash

# Check if a container named 'fortiweb-hol' already exists
container_id=$(sudo docker ps -a -q -f name=fortiweb-hol)

if [ -n "$container_id" ]; then
	# Stop the container
	sudo docker stop "$container_id"

	# Remove the container
	sudo docker rm "$container_id"
fi

# Pull the latest changes
git pull origin main

# Build the Docker image
# docker build --progress=plain -t fortiweb-hol .
sudo docker build -t fortiweb-hol .

# Run the Docker container
sudo docker run -d --restart unless-stopped --name fortiweb-hol-container -p 8000:8000 fortiweb-hol
