FROM alpine:3.10 as build

# preparing the workspace
RUN set -xe; \
    apk update; \
    apk add --virtual .build alpine-sdk git

RUN set -xe; \
    adduser -D build; \
    addgroup build abuild; \
    echo 'build ALL=(ALL) NOPASSWD: /bin/mkdir, /bin/cp' > /etc/sudoers.d/build; \
    sudo -u build abuild-keygen -a -n -i; \
    rm /etc/sudoers.d/build

COPY . /app

# building opendbx
RUN set -xe; \
    chown -R build /app; \
    cd /app/opendbx; \
    chmod -R 777 /app/opendbx; \
    sudo -u build abuild checksum && sudo -u build abuild -r

# fetching the APKBUILD for opendkim
RUN set -xe; \
    cd /tmp; \
    sudo -u build git init; \
    sudo -u build git remote add origin -f git://git.alpinelinux.org/aports; \
    sudo -u build git config core.sparsecheckout true; \
    echo "community/opendkim/*" >> .git/info/sparse-checkout; \
    sudo -u build git pull origin 3.9-stable

# patching opendkim
RUN set -xe; \
    echo '/home/build/packages/app' >> /etc/apk/repositories; \
    apk update; \
    mv /tmp/community/opendkim /app/opendkim; \
    cd /app/opendkim/; \
    sed -i -e 's/\(sysconfdir.*\)/\1 \\/' -e '/sysconfdir/a \\t\t--with-odbx' APKBUILD; \
    sed -i 's/\(makedepends="\)/\1opendbx-dev /' APKBUILD

# building opendkim
RUN set -xe; \
    cd /app/opendkim/; \
    apkgrel -a .; \
    sudo -u build abuild checksum && sudo -u build abuild -r


FROM alpine:3.10

COPY --from=build /home/build/packages/app /tmp/pkgs
COPY --from=build /etc/apk/keys/build* /etc/apk/keys/

RUN set -xe; \
    echo '/tmp/pkgs' >> /etc/apk/repositories; \
    apk update; \
    apk add opendkim; \
    rm -R /tmp/pkgs; \
    install -d -o opendkim -g opendkim /run/opendkim

VOLUME /etc/opendkim

USER opendkim
CMD ["/usr/sbin/opendkim","-f"]