FROM odoo:18

USER root

RUN apt-get update && apt-get install -y \
    python3-dev \
    build-essential \
    libffi-dev \
    libssl-dev \
    cargo \
    zip

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt --break-system-packages
RUN rm /requirements.txt

# COPY ./misc.py /usr/lib/python3/dist-packages/odoo/tools/misc.py
