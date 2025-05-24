FROM busybox:latest

# Expose port 80 for the web server
EXPOSE 80

# Create a simple index.html
RUN echo "<h1>Hello from BusyBox!</h1>" > /var/www/index.html

# Set the command to run the httpd server
CMD ["httpd", "-f", "-p", "80", "-h", "/var/www"]
