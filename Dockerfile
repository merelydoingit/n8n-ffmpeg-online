# Dockerfile

# Use the latest stable n8n image as our base
ARG tag=latest
FROM n8nio/n8n:$tag

# Switch to root user to install system packages
USER root

# Update package lists and install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Copy your input image into the container's working directory
# This path is relative to the Dockerfile (so, it expects input_resized.png to be in the same folder)
COPY input_resized.png /home/node/input_resized.png

# Switch back to the 'node' user for security
USER node
