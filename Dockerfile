FROM nginx:alpine

LABEL maintainer="Jai Sai"
LABEL project="Cloud Portfolio Website"

COPY mywebsite.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
