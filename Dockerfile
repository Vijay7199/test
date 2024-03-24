# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache2
RUN apt-get update && apt-get install -y apache2

# Expose port 80
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
