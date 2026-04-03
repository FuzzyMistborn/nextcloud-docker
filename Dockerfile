FROM nextcloud:33.0.2

RUN apt-get update && apt-get install -y procps smbclient libmagickcore-7.q16-10-extra && rm -rf /var/lib/apt/lists/*
