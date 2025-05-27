


# Use an official lightweight Nginx image
FROM nginx:alpine

# Remove the default static files that come with Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy the built Flutter web app into Nginx’s html directory
COPY build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
