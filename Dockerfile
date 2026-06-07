FROM nginx:alpine 

# Run package updates to patch potential base vulnerabilities
RUN apk update && apk upgrade --no-cache

COPY . /usr/share/nginx/html
EXPOSE 80

# Bypass entrypoint, run nginx directly
ENTRYPOINT []
CMD ["nginx", "-g", "daemon off;"]