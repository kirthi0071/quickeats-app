FROM nginx:1.25

COPY src/ /usr/share/nginx/html/

EXPOSE 80
