FROM wodby/drupal-php:${PHP_TAG}

# Install git and ssh
RUN apt-get update && apt-get install -y git openssh-client

# Copy the startup script
COPY startup.sh /usr/local/bin/startup.sh
COPY startup.sh /usr/local/bin/startup_social.sh

# Set execute permissions for the startup script
RUN chmod +x /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup_social.sh
