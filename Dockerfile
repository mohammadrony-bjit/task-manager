FROM mohammadrony/apache-php-mysqli:latest

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the source code from GitHub to the container
COPY . .
