FROM nextcloud:35.0.1

RUN apt-get update && apt-get install -y --no-install-recommends procps smbclient libmagickcore-7.q16-10-extra && rm -rf /var/lib/apt/lists/*
