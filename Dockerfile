# Use the official Nginx base image
FROM nginx:latest

# Install bash
# We use 'apt-get update' to refresh the package list
# and 'apt-get install -y bash' to install bash without prompting
RUN apt-get update && apt-get install -y bash

# Expose port 80 (default Nginx HTTP port)
EXPOSE 80

# The default Nginx configuration already points to /usr/share/nginx/html
# for serving static files. You can place your HTML/CSS/JS files there
# when you build your image or mount a volume at runtime.

# If you want to put default content directly into the image:
# COPY ./html_content/ /usr/share/nginx/html/
# (Assuming you have a folder named 'html_content' in the same directory as your Dockerfile)

# Command to run Nginx in the foreground
# This is typically the default command for the nginx image, but it's good to be explicit
CMD ["nginx", "-g", "daemon off;"]
