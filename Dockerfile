FROM odoo:14.0

LABEL MAINTAINER Daniel Moreno <contacto@escuelafullstack.com>
USER root
 
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    wget \
    python3-dev \
    python3-wheel \
    libxslt-dev \
    libzip-dev \
    libldap2-dev \
    libsasl2-dev \
    python3-setuptools \
    python3-pip \
    python3-shapely 
    # rm -rf /var/lib/apt/lists/*

RUN pip3 install beautifulsoup4
RUN pip3 install geojson   
# python3-venv \
# RUN pip3 install pandas
# RUN pip3 install numpy
# RUN pip3 install -r requirements.txt
# RUN ["/bin/bash", "-c", "set -o pipefail && wget  -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb | apt-get install -f wkhtmltox_0.12.5-1.bionic_amd64.deb"]
# RUN wget  -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb 
