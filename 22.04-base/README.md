# Base

Dockerfile for building base (bare) Ubuntu Docker image for experimentation.


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
make build/base
```

- Run docker image
```sh
make run/base
```


## Installed Packages

| Package | Version | Installed Size (MBs) |
|----------|----------|----------|
| adduser | 3.118ubuntu5 | 0.59       |
| apt | 2.4.12 | 4.04       |
| base-files | 12ubuntu4.6 | 0.38       |
| base-passwd | 3.5.52build1 | 0.24       |
| bash | 5.1-6ubuntu1.1 | 1.82       |
| bsdutils | 1:2.37.2-4ubuntu3.4 | 0.33       |
| coreutils | 8.32-4.1ubuntu1.2 | 6.95       |
| dash | 0.5.11+git20210903+057cd650a4ed-3build1 | 0.21       |
| debconf | 1.5.79ubuntu1 | 0.50       |
| debianutils | 5.5-1ubuntu2 | 0.24       |
| diffutils | 1:3.8-0ubuntu2 | 0.41       |
| dpkg | 1.21.1ubuntu2.3 | 6.58       |
| e2fsprogs | 1.46.5-2ubuntu1.1 | 1.48       |
| findutils | 4.8.0-1ubuntu3 | 0.61       |
| gcc-12-base | 12.3.0-1ubuntu1~22.04 | 0.27       |
| gpgv | 2.2.27-3ubuntu2.1 | 0.32       |
| grep | 3.7-1build1 | 0.48       |
| gzip | 1.10-4ubuntu4.1 | 0.23       |
| hostname | 3.23ubuntu2 | 0.05       |
| init-system-helpers | 1.62 | 0.13       |
| libacl1 | 2.3.1-1 | 0.07       |
| libapt-pkg6.0 | 2.4.12 | 3.12       |
| libattr1 | 1:2.5.1-1build1 | 0.06       |
| libaudit-common | 1:3.0.7-1build1 | 0.02       |
| libaudit1 | 1:3.0.7-1build1 | 0.15       |
| libblkid1 | 2.37.2-4ubuntu3.4 | 0.32       |
| libbz2-1.0 | 1.0.8-5build1 | 0.10       |
| libc-bin | 2.35-0ubuntu3.8 | 2.48       |
| libc6 | 2.35-0ubuntu3.8 | 13.28      |
| libcap-ng0 | 0.7.9-2.2build3 | 0.04       |
| libcap2 | 1:2.44-1ubuntu0.22.04.1 | 0.06       |
| libcom-err2 | 1.46.5-2ubuntu1.1 | 0.10       |
| libcrypt1 | 1:4.4.27-1 | 0.22       |
| libdb5.3 | 5.3.28+dfsg1-0.8ubuntu3 | 1.71       |
| libdebconfclient0 | 0.261ubuntu1 | 0.08       |
| libext2fs2 | 1.46.5-2ubuntu1.1 | 0.56       |
| libffi8 | 3.4.2-4 | 0.07       |
| libgcc-s1 | 12.3.0-1ubuntu1~22.04 | 0.14       |
| libgcrypt20 | 1.9.4-3ubuntu3 | 1.32       |
| libgmp10 | 2:6.2.1+dfsg-3ubuntu1 | 0.53       |
| libgnutls30 | 3.7.3-4ubuntu1.5 | 2.23       |
| libgpg-error0 | 1.43-3 | 0.18       |
| libgssapi-krb5-2 | 1.19.2-2ubuntu0.3 | 0.44       |
| libhogweed6 | 3.7.3-1build2 | 0.33       |
| libidn2-0 | 2.3.2-2build1 | 0.21       |
| libk5crypto3 | 1.19.2-2ubuntu0.3 | 0.29       |
| libkeyutils1 | 1.6.1-2ubuntu3 | 0.05       |
| libkrb5-3 | 1.19.2-2ubuntu0.3 | 1.03       |
| libkrb5support0 | 1.19.2-2ubuntu0.3 | 0.16       |
| liblz4-1 | 1.9.3-2build2 | 0.14       |
| liblzma5 | 5.2.5-2ubuntu1 | 0.28       |
| libmount1 | 2.37.2-4ubuntu3.4 | 0.37       |
| libncurses6 | 6.3-2ubuntu0.1 | 0.32       |
| libncursesw6 | 6.3-2ubuntu0.1 | 0.41       |
| libnettle8 | 3.7.3-1build2 | 0.35       |
| libnsl2 | 1.3.0-2build2 | 0.12       |
| libp11-kit0 | 0.24.0-6build1 | 1.26       |
| libpam-modules | 1.4.0-11ubuntu2.4 | 1.11       |
| libpam-modules-bin | 1.4.0-11ubuntu2.4 | 0.24       |
| libpam-runtime | 1.4.0-11ubuntu2.4 | 0.30       |
| libpam0g | 1.4.0-11ubuntu2.4 | 0.23       |
| libpcre2-8-0 | 10.39-3ubuntu0.1 | 0.61       |
| libpcre3 | 2:8.39-13ubuntu0.22.04.1 | 0.67       |
| libprocps8 | 2:3.3.17-6ubuntu2.1 | 0.13       |
| libseccomp2 | 2.5.3-2ubuntu2 | 0.14       |
| libselinux1 | 3.3-1build2 | 0.20       |
| libsemanage-common | 3.3-1build2 | 0.04       |
| libsemanage2 | 3.3-1build2 | 0.29       |
| libsepol2 | 3.3-1build1 | 0.72       |
| libsmartcols1 | 2.37.2-4ubuntu3.4 | 0.20       |
| libss2 | 1.46.5-2ubuntu1.1 | 0.11       |
| libssl3 | 3.0.2-0ubuntu1.16 | 5.70       |
| libstdc++6 | 12.3.0-1ubuntu1~22.04 | 2.69       |
| libsystemd0 | 249.11-0ubuntu3.12 | 0.97       |
| libtasn1-6 | 4.18.0-4build1 | 0.13       |
| libtinfo6 | 6.3-2ubuntu0.1 | 0.54       |
| libtirpc-common | 1.3.2-2ubuntu0.1 | 0.03       |
| libtirpc3 | 1.3.2-2ubuntu0.1 | 0.21       |
| libudev1 | 249.11-0ubuntu3.12 | 0.34       |
| libunistring2 | 1.0-1 | 1.71       |
| libuuid1 | 2.37.2-4ubuntu3.4 | 0.13       |
| libxxhash0 | 0.8.1-1 | 0.09       |
| libzstd1 | 1.4.8+dfsg-3build1 | 0.83       |
| login | 1:4.8.1-2ubuntu2.2 | 0.87       |
| logsave | 1.46.5-2ubuntu1.1 | 0.09       |
| lsb-base | 11.1.0ubuntu4 | 0.06       |
| mawk | 1.3.4.20200120-3 | 0.22       |
| mount | 2.37.2-4ubuntu3.4 | 0.38       |
| ncurses-base | 6.3-2ubuntu0.1 | 0.38       |
| ncurses-bin | 6.3-2ubuntu0.1 | 0.63       |
| passwd | 1:4.8.1-2ubuntu2.2 | 2.27       |
| perl-base | 5.34.0-3ubuntu1.3 | 7.55       |
| procps | 2:3.3.17-6ubuntu2.1 | 1.36       |
| sed | 4.8-1ubuntu2 | 0.32       |
| sensible-utils | 0.0.17 | 0.06       |
| sysvinit-utils | 3.01-1ubuntu1 | 0.08       |
| tar | 1.34+dfsg-1ubuntu0.1.22.04.2 | 0.94       |
| ubuntu-keyring | 2021.03.26 | 0.04       |
| usrmerge | 25ubuntu2 | 0.20       |
| util-linux | 2.37.2-4ubuntu3.4 | 3.32       |
| zlib1g | 1:1.2.11.dfsg-2ubuntu9.2 | 0.16       |
