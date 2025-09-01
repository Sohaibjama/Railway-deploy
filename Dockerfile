FROM node:18

# Install tools
RUN apt-get update && apt-get install -y unzip curl

# Set working directory
WORKDIR /app

# Download your ZIP from Google Drive
RUN curl -L "https://drive.google.com/uc?export=download&id=1--xbLXwbgJ-7rvW6SOXkSJC0JvJD7doA" -o project.zip \
    && unzip project.zip \
    && rm project.zip

# Install dependencies
RUN npm install

# Expose your port (Render defaults to 10000+, but map it to 3000 here)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
