FROM mohammadrony/apache-php-mysqli:latest

# Install git inside the container
RUN apt-get install -y git

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the source code from GitHub to the container
RUN git clone -b kubernetes https://github.com/mohammadrony-bjit/task-manager.git .
