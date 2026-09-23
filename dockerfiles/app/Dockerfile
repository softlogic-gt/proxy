FROM ubuntu/squid:latest

# Install apache2-utils to get the htpasswd tool
RUN apt-get update && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

# Copy our configuration and entrypoint script
COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
