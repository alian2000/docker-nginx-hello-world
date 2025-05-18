#FROM nginx:mainline-alpine

# Clean default configs
#RUN rm /etc/nginx/conf.d/*

# Add custom config and content
#ADD helloworld.conf /etc/nginx/conf.d/
#ADD index.html /usr/share/nginx/html/

# Keep Nginx running
#CMD ["nginx", "-g", "daemon off;"]
# Expose port 80
#EXPOSE 80

FROM nginx

#RUN rm /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/

EXPOSE 80

