#!/bin/bash

# Clone the repository
git clone https://github.com/somethingwentwell/fevaworks-ai-2023.git

# Run the Jupyter Docker container
docker run -d -p 8888:8888 -v $(pwd)/fevaworks-ai-2023:/home/jovyan/work -e JUPYTER_TOKEN="lab" jupyter/minimal-notebook

# Wait for the Docker container to be up and running
until docker logs $(docker ps -lq) 2>&1 | grep -q "JupyterLab .* is running at:"
do
  sleep 1
done

# Print a message when the container is ready
echo "Environment Ready"
