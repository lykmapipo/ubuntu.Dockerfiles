# Development

Dockerfile for building Ubuntu Docker image for development and experimentation.


## Usage

- Clone this repository
```sh
git clone https://github.com/lykmapipo/ubuntu.Dockerfiles.git
```

- Install base docker images
```sh
make pull
```

- Make docker image
```sh
make build/dev
```

- Run docker image
```sh
make run/dev
```


## Installed Packages

| Package | Version | Installed Size (MBs) |
|----------|----------|----------|
| adduser | 3.118ubuntu5 | 0.59       |
| apt | 2.4.12 | 4.04       |
| base-files | 12ubuntu4.6 | 0.38       |
| base-passwd | 3.5.52build1 | 0.24       |
| bash | 5.1-6ubuntu1.1 | 1.82       |
| binutils | 2.38-4ubuntu2.6 | 0.11       |
| binutils-common | 2.38-4ubuntu2.6 | 0.49       |
| binutils-x86-64-linux-gnu | 2.38-4ubuntu2.6 | 10.19      |
| bsdutils | 1:2.37.2-4ubuntu3.4 | 0.33       |
| build-essential | 12.9ubuntu3 | 0.02       |
| bzip2 | 1.0.8-5build1 | 0.11       |
| ca-certificates | 20230311ubuntu0.22.04.1 | 0.38       |
| coreutils | 8.32-4.1ubuntu1.2 | 6.95       |
| cpp | 4:11.2.0-1ubuntu1 | 0.07       |
| cpp-11 | 11.4.0-1ubuntu1~22.04 | 25.67      |
| curl | 7.81.0-1ubuntu1.16 | 0.43       |
| dash | 0.5.11+git20210903+057cd650a4ed-3build1 | 0.21       |
| debconf | 1.5.79ubuntu1 | 0.50       |
| debianutils | 5.5-1ubuntu2 | 0.24       |
| diffutils | 1:3.8-0ubuntu2 | 0.41       |
| dirmngr | 2.2.27-3ubuntu2.1 | 0.66       |
| dpkg | 1.21.1ubuntu2.3 | 6.58       |
| dpkg-dev | 1.21.1ubuntu2.3 | 2.43       |
| e2fsprogs | 1.46.5-2ubuntu1.1 | 1.48       |
| findutils | 4.8.0-1ubuntu3 | 0.61       |
| g++ | 4:11.2.0-1ubuntu1 | 0.02       |
| g++-11 | 11.4.0-1ubuntu1~22.04 | 28.21      |
| gcc | 4:11.2.0-1ubuntu1 | 0.05       |
| gcc-11 | 11.4.0-1ubuntu1~22.04 | 51.51      |
| gcc-11-base | 11.4.0-1ubuntu1~22.04 | 0.27       |
| gcc-12-base | 12.3.0-1ubuntu1~22.04 | 0.27       |
| git | 1:2.34.1-1ubuntu1.11 | 18.05      |
| git-man | 1:2.34.1-1ubuntu1.11 | 1.91       |
| gnupg | 2.2.27-3ubuntu2.1 | 0.46       |
| gnupg-l10n | 2.2.27-3ubuntu2.1 | 0.38       |
| gnupg-utils | 2.2.27-3ubuntu2.1 | 0.77       |
| gpg | 2.2.27-3ubuntu2.1 | 1.09       |
| gpg-agent | 2.2.27-3ubuntu2.1 | 0.58       |
| gpg-wks-client | 2.2.27-3ubuntu2.1 | 0.18       |
| gpg-wks-server | 2.2.27-3ubuntu2.1 | 0.16       |
| gpgconf | 2.2.27-3ubuntu2.1 | 0.27       |
| gpgsm | 2.2.27-3ubuntu2.1 | 0.47       |
| gpgv | 2.2.27-3ubuntu2.1 | 0.32       |
| grep | 3.7-1build1 | 0.48       |
| gzip | 1.10-4ubuntu4.1 | 0.23       |
| hostname | 3.23ubuntu2 | 0.05       |
| init-system-helpers | 1.62 | 0.13       |
| libacl1 | 2.3.1-1 | 0.07       |
| libapt-pkg6.0 | 2.4.12 | 3.12       |
| libasan6 | 11.4.0-1ubuntu1~22.04 | 7.34       |
| libassuan0 | 2.5.5-1build1 | 0.11       |
| libatomic1 | 12.3.0-1ubuntu1~22.04 | 0.04       |
| libattr1 | 1:2.5.1-1build1 | 0.06       |
| libaudit-common | 1:3.0.7-1build1 | 0.02       |
| libaudit1 | 1:3.0.7-1build1 | 0.15       |
| libbinutils | 2.38-4ubuntu2.6 | 2.71       |
| libblkid1 | 2.37.2-4ubuntu3.4 | 0.32       |
| libbrotli1 | 1.0.9-2build6 | 0.77       |
| libbsd0 | 0.11.5-1 | 0.13       |
| libbz2-1.0 | 1.0.8-5build1 | 0.10       |
| libc-bin | 2.35-0ubuntu3.8 | 2.48       |
| libc-dev-bin | 2.35-0ubuntu3.8 | 0.29       |
| libc6 | 2.35-0ubuntu3.8 | 13.28      |
| libc6-dev | 2.35-0ubuntu3.8 | 12.73      |
| libcap-ng0 | 0.7.9-2.2build3 | 0.04       |
| libcap2 | 1:2.44-1ubuntu0.22.04.1 | 0.06       |
| libcbor0.8 | 0.8.0-2ubuntu1 | 0.08       |
| libcc1-0 | 12.3.0-1ubuntu1~22.04 | 0.14       |
| libcom-err2 | 1.46.5-2ubuntu1.1 | 0.10       |
| libcrypt-dev | 1:4.4.27-1 | 0.31       |
| libcrypt1 | 1:4.4.27-1 | 0.22       |
| libctf-nobfd0 | 2.38-4ubuntu2.6 | 0.31       |
| libctf0 | 2.38-4ubuntu2.6 | 0.23       |
| libcurl3-gnutls | 7.81.0-1ubuntu1.16 | 0.75       |
| libcurl4 | 7.81.0-1ubuntu1.16 | 0.77       |
| libdb5.3 | 5.3.28+dfsg1-0.8ubuntu3 | 1.71       |
| libdebconfclient0 | 0.261ubuntu1 | 0.08       |
| libdpkg-perl | 1.21.1ubuntu2.3 | 2.29       |
| libedit2 | 3.1-20210910-1build1 | 0.25       |
| liberror-perl | 0.17029-1 | 0.07       |
| libexpat1 | 2.4.7-1ubuntu0.3 | 0.42       |
| libext2fs2 | 1.46.5-2ubuntu1.1 | 0.56       |
| libffi8 | 3.4.2-4 | 0.07       |
| libfido2-1 | 1.10.0-1 | 0.23       |
| libgcc-11-dev | 11.4.0-1ubuntu1~22.04 | 13.57      |
| libgcc-s1 | 12.3.0-1ubuntu1~22.04 | 0.14       |
| libgcrypt20 | 1.9.4-3ubuntu3 | 1.32       |
| libgdbm-compat4 | 1.23-1 | 0.04       |
| libgdbm6 | 1.23-1 | 0.10       |
| libgmp10 | 2:6.2.1+dfsg-3ubuntu1 | 0.53       |
| libgnutls30 | 3.7.3-4ubuntu1.5 | 2.23       |
| libgomp1 | 12.3.0-1ubuntu1~22.04 | 0.31       |
| libgpg-error0 | 1.43-3 | 0.18       |
| libgpm2 | 1.20.7-10build1 | 0.06       |
| libgssapi-krb5-2 | 1.19.2-2ubuntu0.3 | 0.44       |
| libhogweed6 | 3.7.3-1build2 | 0.33       |
| libidn2-0 | 2.3.2-2build1 | 0.21       |
| libisl23 | 0.24-2build1 | 2.11       |
| libitm1 | 12.3.0-1ubuntu1~22.04 | 0.11       |
| libk5crypto3 | 1.19.2-2ubuntu0.3 | 0.29       |
| libkeyutils1 | 1.6.1-2ubuntu3 | 0.05       |
| libkrb5-3 | 1.19.2-2ubuntu0.3 | 1.03       |
| libkrb5support0 | 1.19.2-2ubuntu0.3 | 0.16       |
| libksba8 | 1.6.0-2ubuntu0.2 | 0.29       |
| libldap-2.5-0 | 2.5.18+dfsg-0ubuntu0.22.04.1 | 0.55       |
| liblsan0 | 12.3.0-1ubuntu1~22.04 | 2.89       |
| liblz4-1 | 1.9.3-2build2 | 0.14       |
| liblzma5 | 5.2.5-2ubuntu1 | 0.28       |
| libmd0 | 1.0.4-1build1 | 0.07       |
| libmount1 | 2.37.2-4ubuntu3.4 | 0.37       |
| libmpc3 | 1.2.1-2build1 | 0.12       |
| libmpdec3 | 2.5.1-2build2 | 0.24       |
| libmpfr6 | 4.1.0-3build3 | 3.33       |
| libncurses6 | 6.3-2ubuntu0.1 | 0.32       |
| libncursesw6 | 6.3-2ubuntu0.1 | 0.41       |
| libnettle8 | 3.7.3-1build2 | 0.35       |
| libnghttp2-14 | 1.43.0-1ubuntu0.2 | 0.20       |
| libnpth0 | 1.6-3build2 | 0.04       |
| libnsl-dev | 1.3.0-2build2 | 0.34       |
| libnsl2 | 1.3.0-2build2 | 0.12       |
| libp11-kit0 | 0.24.0-6build1 | 1.26       |
| libpam-modules | 1.4.0-11ubuntu2.4 | 1.11       |
| libpam-modules-bin | 1.4.0-11ubuntu2.4 | 0.24       |
| libpam-runtime | 1.4.0-11ubuntu2.4 | 0.30       |
| libpam0g | 1.4.0-11ubuntu2.4 | 0.23       |
| libpcre2-8-0 | 10.39-3ubuntu0.1 | 0.61       |
| libpcre3 | 2:8.39-13ubuntu0.22.04.1 | 0.67       |
| libperl5.34 | 5.34.0-3ubuntu1.3 | 27.78      |
| libprocps8 | 2:3.3.17-6ubuntu2.1 | 0.13       |
| libpsl5 | 0.21.0-1.2build2 | 0.09       |
| libpython3.10 | 3.10.12-1~22.04.4 | 5.63       |
| libpython3.10-minimal | 3.10.12-1~22.04.4 | 4.99       |
| libpython3.10-stdlib | 3.10.12-1~22.04.4 | 7.93       |
| libquadmath0 | 12.3.0-1ubuntu1~22.04 | 0.29       |
| libreadline8 | 8.1.2-1 | 0.45       |
| librtmp1 | 2.4+20151223.gitfa8646d.1-2build4 | 0.14       |
| libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | 0.17       |
| libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | 0.09       |
| libseccomp2 | 2.5.3-2ubuntu2 | 0.14       |
| libselinux1 | 3.3-1build2 | 0.20       |
| libsemanage-common | 3.3-1build2 | 0.04       |
| libsemanage2 | 3.3-1build2 | 0.29       |
| libsepol2 | 3.3-1build1 | 0.72       |
| libsmartcols1 | 2.37.2-4ubuntu3.4 | 0.20       |
| libsodium23 | 1.0.18-1build2 | 0.39       |
| libsqlite3-0 | 3.37.2-2ubuntu0.3 | 1.56       |
| libss2 | 1.46.5-2ubuntu1.1 | 0.11       |
| libssh-4 | 0.9.6-2ubuntu0.22.04.3 | 0.47       |
| libssl3 | 3.0.2-0ubuntu1.16 | 5.70       |
| libstdc++-11-dev | 11.4.0-1ubuntu1~22.04 | 18.32      |
| libstdc++6 | 12.3.0-1ubuntu1~22.04 | 2.69       |
| libsystemd0 | 249.11-0ubuntu3.12 | 0.97       |
| libtasn1-6 | 4.18.0-4build1 | 0.13       |
| libtinfo6 | 6.3-2ubuntu0.1 | 0.54       |
| libtirpc-common | 1.3.2-2ubuntu0.1 | 0.03       |
| libtirpc-dev | 1.3.2-2ubuntu0.1 | 0.70       |
| libtirpc3 | 1.3.2-2ubuntu0.1 | 0.21       |
| libtsan0 | 11.4.0-1ubuntu1~22.04 | 7.08       |
| libubsan1 | 12.3.0-1ubuntu1~22.04 | 2.61       |
| libudev1 | 249.11-0ubuntu3.12 | 0.34       |
| libunistring2 | 1.0-1 | 1.71       |
| libuuid1 | 2.37.2-4ubuntu3.4 | 0.13       |
| libxxhash0 | 0.8.1-1 | 0.09       |
| libzstd1 | 1.4.8+dfsg-3build1 | 0.83       |
| linux-libc-dev | 5.15.0-116.126 | 6.76       |
| login | 1:4.8.1-2ubuntu2.2 | 0.87       |
| logsave | 1.46.5-2ubuntu1.1 | 0.09       |
| lsb-base | 11.1.0ubuntu4 | 0.06       |
| lto-disabled-list | 24 | 0.04       |
| make | 4.3-4.1build1 | 0.41       |
| mawk | 1.3.4.20200120-3 | 0.22       |
| media-types | 7.0.0 | 0.09       |
| mount | 2.37.2-4ubuntu3.4 | 0.38       |
| ncurses-base | 6.3-2ubuntu0.1 | 0.38       |
| ncurses-bin | 6.3-2ubuntu0.1 | 0.63       |
| netbase | 6.3 | 0.04       |
| openssh-client | 1:8.9p1-3ubuntu0.10 | 3.02       |
| openssl | 3.0.2-0ubuntu1.16 | 2.00       |
| passwd | 1:4.8.1-2ubuntu2.2 | 2.27       |
| patch | 2.7.6-7build2 | 0.22       |
| perl | 5.34.0-3ubuntu1.3 | 0.70       |
| perl-base | 5.34.0-3ubuntu1.3 | 7.55       |
| perl-modules-5.34 | 5.34.0-3ubuntu1.3 | 17.26      |
| pinentry-curses | 1.1.1-1build2 | 0.09       |
| procps | 2:3.3.17-6ubuntu2.1 | 1.36       |
| readline-common | 8.1.2-1 | 0.08       |
| rpcsvc-proto | 1.4.2-0ubuntu6 | 0.24       |
| sed | 4.8-1ubuntu2 | 0.32       |
| sensible-utils | 0.0.17 | 0.06       |
| sysvinit-utils | 3.01-1ubuntu1 | 0.08       |
| tar | 1.34+dfsg-1ubuntu0.1.22.04.2 | 0.94       |
| ubuntu-keyring | 2021.03.26 | 0.04       |
| usrmerge | 25ubuntu2 | 0.20       |
| util-linux | 2.37.2-4ubuntu3.4 | 3.32       |
| vim | 2:8.2.3995-1ubuntu2.17 | 3.84       |
| vim-common | 2:8.2.3995-1ubuntu2.17 | 0.37       |
| vim-runtime | 2:8.2.3995-1ubuntu2.17 | 32.01      |
| wget | 1.21.2-2ubuntu1.1 | 0.91       |
| xxd | 2:8.2.3995-1ubuntu2.17 | 0.27       |
| xz-utils | 5.2.5-2ubuntu1 | 0.36       |
| zlib1g | 1:1.2.11.dfsg-2ubuntu9.2 | 0.16       |
