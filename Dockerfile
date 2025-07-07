# Start from official n8n Docker image
FROM n8nio/n8n:latest

# Install ffmpeg
USER root
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Switch back to default n8n user
USER node
