FROM nginx:mainline-alpine

# Clean default configs
RUN rm /etc/nginx/conf.d/*

# Add custom config and content
ADD helloworld.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/

# Keep Nginx running
CMD ["nginx", "-g", "daemon off;"]
