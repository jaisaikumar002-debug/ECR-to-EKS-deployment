
# Stage 1: Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio HTML into Nginx web directory
COPY mywebsite.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
