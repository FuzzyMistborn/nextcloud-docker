FROM nextcloud:32.0.6

RUN apt-get update && apt-get install -y procps smbclient libmagickcore-6.q16-7-extra && rm -rf /var/lib/apt/lists/*
