# Gunakan image nginx sebagai base
FROM nginx:alpine

# Hapus default index.html bawaan nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file HTML, CSS, dan lainnya ke direktori default nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]
