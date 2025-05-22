# Use an official Ubuntu base image
FROM ubuntu:latest

# Set environment variables (optional but good practice)
ENV NGINX_VERSION 1.25.1

# Install necessary packages:
#   - apt-get update: Updates the package list
#   - apt-get install -y: Installs packages without prompting for confirmation
#     - nginx: The Nginx web server
#     - bash: Explicitly ensure bash is installed (though it's usually there on Ubuntu)
#     - procps: Provides 'ps' command, which is often useful for process monitoring
RUN apt-get update && \
    apt-get install -y \
    nginx \
    bash \
    procps && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 (default HTTP port for Nginx)
EXPOSE 80

# Command to run when the container starts
# This uses bash to execute the Nginx command.
# -g "daemon off;" keeps Nginx in the foreground, essential for Docker containers.
CMD ["/bin/bash", "-c", "nginx -g 'daemon off;'"]
