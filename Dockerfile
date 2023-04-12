FROM odoo:16

USER root
RUN set -x; \
    pip3 install debugpy

# Set default user when running the container
USER odoo