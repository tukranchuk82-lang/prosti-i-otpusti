# Статический лендинг: nginx раздаёт index.html и картинки как есть, сборки нет.
FROM nginx:alpine
COPY index.html *.webp /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
