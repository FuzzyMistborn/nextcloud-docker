FROM nextcloud:30.0.5

RUN apt-get update && apt-get install -y procps smbclient libmagickcore-6.q16-6-extra && rm -rf /var/lib/apt/lists/*
