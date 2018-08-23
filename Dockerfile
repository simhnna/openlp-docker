From debian

Run apt-get update

RUN apt-get install -y git python3-chardet python3-lxml bzr\
        python3-enchant python3-bs4 python3-mako python3-icu \
        python3-waitress python3-alembic python3-websockets \
        python3-webob mediainfo python3-pytest python3-dbus \
        python3-pyqt5 xvfb python3-requests python3-qtawesome \
        locales

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
