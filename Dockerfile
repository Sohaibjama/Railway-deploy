FROM node:18
RUN apt-get update && apt-get install -y unzip curl
WORKDIR /app
RUN curl -L "https://drive.google.com/uc?export=download&id=1--xbLXwbgJ-7rvW6SOXkSJC0JvJD7doA" -o project.zip \
    && unzip project.zip \
    && rm project.zip
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
