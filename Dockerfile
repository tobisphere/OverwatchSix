# Gebruik de officiële, lichtgewicht Nginx-afbeelding
FROM nginx:alpine

# Verwijder de standaard Nginx-bestanden
RUN rm -rf /usr/share/nginx/html/*

# Kopieer jouw bestanden naar de Nginx HTML-map
# Let op: Nginx zoekt standaard naar 'index.html'. 
# We kopiëren scan_app.html en hernoemen het direct naar index.html.
COPY scan_app.html /usr/share/nginx/html/index.html
COPY scan_app.css /usr/share/nginx/html/scan_app.css

# Exponeer poort 80 (de standaard Nginx poort)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]