#!/bin/bash
set -e

# Configure official Ubuntu package mirrors
if [ -f /etc/apt/sources.list.d/ubuntu.sources ]; then
    sed -i -E \
        's|URIs: http://[^ ]+|URIs: http://archive.ubuntu.com/ubuntu/|' \
        /etc/apt/sources.list.d/ubuntu.sources

    # Use the official security mirror for security updates
    sed -i '/Suites: noble-security/{n;s|URIs:.*|URIs: http://security.ubuntu.com/ubuntu/|;}' \
        /etc/apt/sources.list.d/ubuntu.sources
fi

echo "Configured Ubuntu package mirrors:"
grep -E '^(URIs|Suites):' /etc/apt/sources.list.d/ubuntu.sources

# Update package lists with retries
for attempt in 1 2 3 4 5; do
    if apt-get update -y; then
        break
    fi

    echo "Package update failed. Retry $attempt of 5..."
    if [ "$attempt" -eq 5 ]; then
        echo "ERROR: Package update failed after 5 attempts."
        exit 1
    fi
    sleep 15
done

# Install Apache with retries
for attempt in 1 2 3 4 5; do
    if apt-get install -y apache2; then
        break
    fi

    echo "Apache installation failed. Retry $attempt of 5..."
    if [ "$attempt" -eq 5 ]; then
        echo "ERROR: Apache installation failed after 5 attempts."
        exit 1
    fi
    sleep 15
done

# Verify Apache installation
command -v apache2

# Enable and start Apache
systemctl enable apache2
systemctl restart apache2

# Create website directory
mkdir -p /var/www/html

# Create project webpage
cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chandresh Kumar - AWS Terraform Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef2f7;
            text-align: center;
            padding: 80px 20px;
        }
        .container {
            background: white;
            max-width: 700px;
            margin: auto;
            padding: 45px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        h1 { color: #232f3e; }
        h2 { color: #ff9900; }
        p { color: #444; line-height: 1.8; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My AWS Web Server!</h1>
        <h2>Developed by Chandresh Kumar</h2>
        <p>This website is deployed on Amazon EC2 using Terraform Infrastructure as Code.</p>
        <p>Technology: AWS | Terraform | Ubuntu | Apache</p>
        <p>Project: Linux EC2 Web Server Deployment</p>
    </div>
</body>
</html>
HTML

# Confirm Apache is running
systemctl is-active --quiet apache2
echo "Apache installation and website deployment completed successfully."
