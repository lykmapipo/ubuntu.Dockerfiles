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

| Package | Version | Installed Size (MBs) | Homepage |
|----------|----------|----------|----------|
| adduser | 3.118ubuntu5 | 0.59       |  |
| apt | 2.4.12 | 4.04       |  |
| apt-transport-https | 2.4.12 | 0.16       |  |
| base-files | 12ubuntu4.6 | 0.38       |  |
| base-passwd | 3.5.52build1 | 0.24       |  |
| bash | 5.1-6ubuntu1.1 | 1.82       | http://tiswww.case.edu/php/chet/bash/bashtop.html |
| binutils | 2.38-4ubuntu2.6 | 0.11       | https://www.gnu.org/software/binutils/ |
| binutils-common | 2.38-4ubuntu2.6 | 0.49       | https://www.gnu.org/software/binutils/ |
| binutils-x86-64-linux-gnu | 2.38-4ubuntu2.6 | 10.19      | https://www.gnu.org/software/binutils/ |
| bsdutils | 1:2.37.2-4ubuntu3.4 | 0.33       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| build-essential | 12.9ubuntu3 | 0.02       |  |
| bzip2 | 1.0.8-5build1 | 0.11       | https://sourceware.org/bzip2/ |
| ca-certificates | 20230311ubuntu0.22.04.1 | 0.38       |  |
| coreutils | 8.32-4.1ubuntu1.2 | 6.95       | http://gnu.org/software/coreutils |
| cpp | 4:11.2.0-1ubuntu1 | 0.07       |  |
| cpp-11 | 11.4.0-1ubuntu1~22.04 | 25.67      | http://gcc.gnu.org/ |
| curl | 7.81.0-1ubuntu1.17 | 0.43       | https://curl.haxx.se |
| dash | 0.5.11+git20210903+057cd650a4ed-3build1 | 0.21       | http://gondor.apana.org.au/~herbert/dash/ |
| debconf | 1.5.79ubuntu1 | 0.50       |  |
| debianutils | 5.5-1ubuntu2 | 0.24       |  |
| diffutils | 1:3.8-0ubuntu2 | 0.41       | https://www.gnu.org/software/diffutils/ |
| dirmngr | 2.2.27-3ubuntu2.1 | 0.66       | https://www.gnupg.org/ |
| dpkg | 1.21.1ubuntu2.3 | 6.58       | https://wiki.debian.org/Teams/Dpkg |
| dpkg-dev | 1.21.1ubuntu2.3 | 2.43       | https://wiki.debian.org/Teams/Dpkg |
| e2fsprogs | 1.46.5-2ubuntu1.1 | 1.48       | http://e2fsprogs.sourceforge.net |
| findutils | 4.8.0-1ubuntu3 | 0.61       | https://savannah.gnu.org/projects/findutils/ |
| g++ | 4:11.2.0-1ubuntu1 | 0.02       |  |
| g++-11 | 11.4.0-1ubuntu1~22.04 | 28.21      | http://gcc.gnu.org/ |
| gcc | 4:11.2.0-1ubuntu1 | 0.05       |  |
| gcc-11 | 11.4.0-1ubuntu1~22.04 | 51.51      | http://gcc.gnu.org/ |
| gcc-11-base | 11.4.0-1ubuntu1~22.04 | 0.27       | http://gcc.gnu.org/ |
| gcc-12-base | 12.3.0-1ubuntu1~22.04 | 0.27       | http://gcc.gnu.org/ |
| git | 1:2.34.1-1ubuntu1.11 | 18.05      | https://git-scm.com/ |
| git-man | 1:2.34.1-1ubuntu1.11 | 1.91       | https://git-scm.com/ |
| gnupg | 2.2.27-3ubuntu2.1 | 0.46       | https://www.gnupg.org/ |
| gnupg-l10n | 2.2.27-3ubuntu2.1 | 0.38       | https://www.gnupg.org/ |
| gnupg-utils | 2.2.27-3ubuntu2.1 | 0.77       | https://www.gnupg.org/ |
| gpg | 2.2.27-3ubuntu2.1 | 1.09       | https://www.gnupg.org/ |
| gpg-agent | 2.2.27-3ubuntu2.1 | 0.58       | https://www.gnupg.org/ |
| gpg-wks-client | 2.2.27-3ubuntu2.1 | 0.18       | https://www.gnupg.org/ |
| gpg-wks-server | 2.2.27-3ubuntu2.1 | 0.16       | https://www.gnupg.org/ |
| gpgconf | 2.2.27-3ubuntu2.1 | 0.27       | https://www.gnupg.org/ |
| gpgsm | 2.2.27-3ubuntu2.1 | 0.47       | https://www.gnupg.org/ |
| gpgv | 2.2.27-3ubuntu2.1 | 0.32       | https://www.gnupg.org/ |
| grep | 3.7-1build1 | 0.48       | https://www.gnu.org/software/grep/ |
| gzip | 1.10-4ubuntu4.1 | 0.23       | https://www.gnu.org/software/gzip/ |
| hostname | 3.23ubuntu2 | 0.05       |  |
| init-system-helpers | 1.62 | 0.13       |  |
| libacl1 | 2.3.1-1 | 0.07       | https://savannah.nongnu.org/projects/acl/ |
| libapt-pkg6.0 | 2.4.12 | 3.12       |  |
| libasan6 | 11.4.0-1ubuntu1~22.04 | 7.34       | http://gcc.gnu.org/ |
| libassuan0 | 2.5.5-1build1 | 0.11       | https://www.gnupg.org/related_software/libassuan/index.html |
| libatomic1 | 12.3.0-1ubuntu1~22.04 | 0.04       | http://gcc.gnu.org/ |
| libattr1 | 1:2.5.1-1build1 | 0.06       | https://savannah.nongnu.org/projects/attr/ |
| libaudit-common | 1:3.0.7-1build1 | 0.02       | https://people.redhat.com/sgrubb/audit/ |
| libaudit1 | 1:3.0.7-1build1 | 0.15       | https://people.redhat.com/sgrubb/audit/ |
| libbinutils | 2.38-4ubuntu2.6 | 2.71       | https://www.gnu.org/software/binutils/ |
| libblkid1 | 2.37.2-4ubuntu3.4 | 0.32       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| libbrotli1 | 1.0.9-2build6 | 0.77       | https://github.com/google/brotli |
| libbsd0 | 0.11.5-1 | 0.13       | https://libbsd.freedesktop.org/ |
| libbz2-1.0 | 1.0.8-5build1 | 0.10       | https://sourceware.org/bzip2/ |
| libc-bin | 2.35-0ubuntu3.8 | 2.48       | https://www.gnu.org/software/libc/libc.html |
| libc-dev-bin | 2.35-0ubuntu3.8 | 0.29       | https://www.gnu.org/software/libc/libc.html |
| libc6 | 2.35-0ubuntu3.8 | 13.28      | https://www.gnu.org/software/libc/libc.html |
| libc6-dev | 2.35-0ubuntu3.8 | 12.73      | https://www.gnu.org/software/libc/libc.html |
| libcap-ng0 | 0.7.9-2.2build3 | 0.04       | http://people.redhat.com/sgrubb/libcap-ng |
| libcap2 | 1:2.44-1ubuntu0.22.04.1 | 0.06       | https://sites.google.com/site/fullycapable/ |
| libcbor0.8 | 0.8.0-2ubuntu1 | 0.08       | https://github.com/PJK/libcbor |
| libcc1-0 | 12.3.0-1ubuntu1~22.04 | 0.14       | http://gcc.gnu.org/ |
| libcom-err2 | 1.46.5-2ubuntu1.1 | 0.10       | http://e2fsprogs.sourceforge.net |
| libcrypt-dev | 1:4.4.27-1 | 0.31       |  |
| libcrypt1 | 1:4.4.27-1 | 0.22       |  |
| libctf-nobfd0 | 2.38-4ubuntu2.6 | 0.31       | https://www.gnu.org/software/binutils/ |
| libctf0 | 2.38-4ubuntu2.6 | 0.23       | https://www.gnu.org/software/binutils/ |
| libcurl3-gnutls | 7.81.0-1ubuntu1.17 | 0.75       | https://curl.haxx.se |
| libcurl4 | 7.81.0-1ubuntu1.17 | 0.77       | https://curl.haxx.se |
| libdb5.3 | 5.3.28+dfsg1-0.8ubuntu3 | 1.71       | http://www.oracle.com/technetwork/database/database-technologies/berkeleydb/overview/index.html |
| libdebconfclient0 | 0.261ubuntu1 | 0.08       |  |
| libdpkg-perl | 1.21.1ubuntu2.3 | 2.29       | https://wiki.debian.org/Teams/Dpkg |
| libedit2 | 3.1-20210910-1build1 | 0.25       | https://www.thrysoee.dk/editline/ |
| liberror-perl | 0.17029-1 | 0.07       | https://metacpan.org/release/Error |
| libexpat1 | 2.4.7-1ubuntu0.3 | 0.42       | https://libexpat.github.io/ |
| libext2fs2 | 1.46.5-2ubuntu1.1 | 0.56       | http://e2fsprogs.sourceforge.net |
| libffi8 | 3.4.2-4 | 0.07       | https://sourceware.org/libffi/ |
| libfido2-1 | 1.10.0-1 | 0.23       | https://developers.yubico.com/libfido2/ |
| libgcc-11-dev | 11.4.0-1ubuntu1~22.04 | 13.57      | http://gcc.gnu.org/ |
| libgcc-s1 | 12.3.0-1ubuntu1~22.04 | 0.14       | http://gcc.gnu.org/ |
| libgcrypt20 | 1.9.4-3ubuntu3 | 1.32       | https://directory.fsf.org/project/libgcrypt/ |
| libgdbm-compat4 | 1.23-1 | 0.04       | https://gnu.org/software/gdbm |
| libgdbm6 | 1.23-1 | 0.10       | https://gnu.org/software/gdbm |
| libgmp10 | 2:6.2.1+dfsg-3ubuntu1 | 0.53       | https://gmplib.org/ |
| libgnutls30 | 3.7.3-4ubuntu1.5 | 2.23       | https://www.gnutls.org/ |
| libgomp1 | 12.3.0-1ubuntu1~22.04 | 0.31       | http://gcc.gnu.org/ |
| libgpg-error0 | 1.43-3 | 0.18       | https://www.gnupg.org/related_software/libgpg-error/ |
| libgpm2 | 1.20.7-10build1 | 0.06       | https://nico.schottelius.org/software/gpm/ |
| libgssapi-krb5-2 | 1.19.2-2ubuntu0.3 | 0.44       | http://web.mit.edu/kerberos/ |
| libhogweed6 | 3.7.3-1build2 | 0.33       | http://www.lysator.liu.se/~nisse/nettle/ |
| libidn2-0 | 2.3.2-2build1 | 0.21       | https://www.gnu.org/software/libidn/#libidn2 |
| libisl23 | 0.24-2build1 | 2.11       | http://isl.gforge.inria.fr/ |
| libitm1 | 12.3.0-1ubuntu1~22.04 | 0.11       | http://gcc.gnu.org/ |
| libk5crypto3 | 1.19.2-2ubuntu0.3 | 0.29       | http://web.mit.edu/kerberos/ |
| libkeyutils1 | 1.6.1-2ubuntu3 | 0.05       | https://people.redhat.com/~dhowells/keyutils/ |
| libkrb5-3 | 1.19.2-2ubuntu0.3 | 1.03       | http://web.mit.edu/kerberos/ |
| libkrb5support0 | 1.19.2-2ubuntu0.3 | 0.16       | http://web.mit.edu/kerberos/ |
| libksba8 | 1.6.0-2ubuntu0.2 | 0.29       | https://www.gnupg.org/related_software/libksba/ |
| libldap-2.5-0 | 2.5.18+dfsg-0ubuntu0.22.04.2 | 0.55       | https://www.openldap.org/ |
| liblsan0 | 12.3.0-1ubuntu1~22.04 | 2.89       | http://gcc.gnu.org/ |
| liblz4-1 | 1.9.3-2build2 | 0.14       | https://github.com/Cyan4973/lz4 |
| liblzma5 | 5.2.5-2ubuntu1 | 0.28       | https://tukaani.org/xz/ |
| libmd0 | 1.0.4-1build1 | 0.07       | https://www.hadrons.org/software/libmd/ |
| libmount1 | 2.37.2-4ubuntu3.4 | 0.37       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| libmpc3 | 1.2.1-2build1 | 0.12       | http://www.multiprecision.org/mpc/ |
| libmpdec3 | 2.5.1-2build2 | 0.24       | https://www.bytereef.org/mpdecimal/index.html |
| libmpfr6 | 4.1.0-3build3 | 3.33       | https://www.mpfr.org/ |
| libncurses6 | 6.3-2ubuntu0.1 | 0.32       | https://invisible-island.net/ncurses/ |
| libncursesw6 | 6.3-2ubuntu0.1 | 0.41       | https://invisible-island.net/ncurses/ |
| libnettle8 | 3.7.3-1build2 | 0.35       | http://www.lysator.liu.se/~nisse/nettle/ |
| libnghttp2-14 | 1.43.0-1ubuntu0.2 | 0.20       | https://nghttp2.org/ |
| libnpth0 | 1.6-3build2 | 0.04       | https://www.gnupg.org/ |
| libnsl-dev | 1.3.0-2build2 | 0.34       | https://github.com/thkukuk/libnsl |
| libnsl2 | 1.3.0-2build2 | 0.12       | https://github.com/thkukuk/libnsl |
| libp11-kit0 | 0.24.0-6build1 | 1.26       | https://p11-glue.github.io/p11-glue/p11-kit.html |
| libpam-modules | 1.4.0-11ubuntu2.4 | 1.11       | http://www.linux-pam.org/ |
| libpam-modules-bin | 1.4.0-11ubuntu2.4 | 0.24       | http://www.linux-pam.org/ |
| libpam-runtime | 1.4.0-11ubuntu2.4 | 0.30       | http://www.linux-pam.org/ |
| libpam0g | 1.4.0-11ubuntu2.4 | 0.23       | http://www.linux-pam.org/ |
| libpcre2-8-0 | 10.39-3ubuntu0.1 | 0.61       | https://pcre.org/ |
| libpcre3 | 2:8.39-13ubuntu0.22.04.1 | 0.67       |  |
| libperl5.34 | 5.34.0-3ubuntu1.3 | 27.78      | http://dev.perl.org/perl5/ |
| libprocps8 | 2:3.3.17-6ubuntu2.1 | 0.13       | https://gitlab.com/procps-ng/procps |
| libpsl5 | 0.21.0-1.2build2 | 0.09       | https://github.com/rockdaboot/libpsl |
| libpython3.10 | 3.10.12-1~22.04.5 | 5.63       |  |
| libpython3.10-minimal | 3.10.12-1~22.04.5 | 4.99       |  |
| libpython3.10-stdlib | 3.10.12-1~22.04.5 | 7.93       |  |
| libquadmath0 | 12.3.0-1ubuntu1~22.04 | 0.29       | http://gcc.gnu.org/ |
| libreadline8 | 8.1.2-1 | 0.45       |  |
| librtmp1 | 2.4+20151223.gitfa8646d.1-2build4 | 0.14       | http://rtmpdump.mplayerhq.hu/ |
| libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | 0.17       | https://www.cyrusimap.org/sasl/ |
| libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | 0.09       | https://www.cyrusimap.org/sasl/ |
| libseccomp2 | 2.5.3-2ubuntu2 | 0.14       | https://github.com/seccomp/libseccomp |
| libselinux1 | 3.3-1build2 | 0.20       | https://selinuxproject.org |
| libsemanage-common | 3.3-1build2 | 0.04       | https://selinuxproject.org |
| libsemanage2 | 3.3-1build2 | 0.29       | https://selinuxproject.org |
| libsepol2 | 3.3-1build1 | 0.72       | https://selinuxproject.org |
| libsmartcols1 | 2.37.2-4ubuntu3.4 | 0.20       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| libsodium23 | 1.0.18-1build2 | 0.39       | https://www.libsodium.org/ |
| libsqlite3-0 | 3.37.2-2ubuntu0.3 | 1.56       | https://www.sqlite.org/ |
| libss2 | 1.46.5-2ubuntu1.1 | 0.11       | http://e2fsprogs.sourceforge.net |
| libssh-4 | 0.9.6-2ubuntu0.22.04.3 | 0.47       | https://www.libssh.org/ |
| libssl3 | 3.0.2-0ubuntu1.16 | 5.70       | https://www.openssl.org/ |
| libstdc++-11-dev | 11.4.0-1ubuntu1~22.04 | 18.32      | http://gcc.gnu.org/ |
| libstdc++6 | 12.3.0-1ubuntu1~22.04 | 2.69       | http://gcc.gnu.org/ |
| libsystemd0 | 249.11-0ubuntu3.12 | 0.97       | https://www.freedesktop.org/wiki/Software/systemd |
| libtasn1-6 | 4.18.0-4build1 | 0.13       | https://www.gnu.org/software/libtasn1/ |
| libtinfo6 | 6.3-2ubuntu0.1 | 0.54       | https://invisible-island.net/ncurses/ |
| libtirpc-common | 1.3.2-2ubuntu0.1 | 0.03       | http://sourceforge.net/projects/libtirpc |
| libtirpc-dev | 1.3.2-2ubuntu0.1 | 0.70       | http://sourceforge.net/projects/libtirpc |
| libtirpc3 | 1.3.2-2ubuntu0.1 | 0.21       | http://sourceforge.net/projects/libtirpc |
| libtsan0 | 11.4.0-1ubuntu1~22.04 | 7.08       | http://gcc.gnu.org/ |
| libubsan1 | 12.3.0-1ubuntu1~22.04 | 2.61       | http://gcc.gnu.org/ |
| libudev1 | 249.11-0ubuntu3.12 | 0.34       | https://www.freedesktop.org/wiki/Software/systemd |
| libunistring2 | 1.0-1 | 1.71       | https://www.gnu.org/software/libunistring/ |
| libuuid1 | 2.37.2-4ubuntu3.4 | 0.13       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| libxxhash0 | 0.8.1-1 | 0.09       | https://cyan4973.github.io/xxHash |
| libzstd1 | 1.4.8+dfsg-3build1 | 0.83       | https://github.com/facebook/zstd |
| linux-libc-dev | 5.15.0-117.127 | 6.76       |  |
| locales | 2.35-0ubuntu3.8 | 16.67      | https://www.gnu.org/software/libc/libc.html |
| login | 1:4.8.1-2ubuntu2.2 | 0.87       | https://github.com/shadow-maint/shadow |
| logsave | 1.46.5-2ubuntu1.1 | 0.09       | http://e2fsprogs.sourceforge.net |
| lsb-base | 11.1.0ubuntu4 | 0.06       | https://wiki.linuxfoundation.org/lsb/start |
| lto-disabled-list | 24 | 0.04       |  |
| make | 4.3-4.1build1 | 0.41       | https://www.gnu.org/software/make/ |
| mawk | 1.3.4.20200120-3 | 0.22       | https://invisible-island.net/mawk/ |
| media-types | 7.0.0 | 0.09       |  |
| mount | 2.37.2-4ubuntu3.4 | 0.38       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| ncurses-base | 6.3-2ubuntu0.1 | 0.38       | https://invisible-island.net/ncurses/ |
| ncurses-bin | 6.3-2ubuntu0.1 | 0.63       | https://invisible-island.net/ncurses/ |
| netbase | 6.3 | 0.04       |  |
| openssh-client | 1:8.9p1-3ubuntu0.10 | 3.02       | http://www.openssh.com/ |
| openssl | 3.0.2-0ubuntu1.17 | 2.00       | https://www.openssl.org/ |
| passwd | 1:4.8.1-2ubuntu2.2 | 2.27       | https://github.com/shadow-maint/shadow |
| patch | 2.7.6-7build2 | 0.22       | https://savannah.gnu.org/projects/patch/ |
| perl | 5.34.0-3ubuntu1.3 | 0.70       | http://dev.perl.org/perl5/ |
| perl-base | 5.34.0-3ubuntu1.3 | 7.55       | http://dev.perl.org/perl5/ |
| perl-modules-5.34 | 5.34.0-3ubuntu1.3 | 17.26      | http://dev.perl.org/perl5/ |
| pinentry-curses | 1.1.1-1build2 | 0.09       | https://www.gnupg.org/related_software/pinentry/ |
| procps | 2:3.3.17-6ubuntu2.1 | 1.36       | https://gitlab.com/procps-ng/procps |
| readline-common | 8.1.2-1 | 0.08       |  |
| rpcsvc-proto | 1.4.2-0ubuntu6 | 0.24       | https://github.com/thkukuk/rpcsvc-proto |
| sed | 4.8-1ubuntu2 | 0.32       | https://www.gnu.org/software/sed/ |
| sensible-utils | 0.0.17 | 0.06       |  |
| sudo | 1.9.9-1ubuntu2.4 | 2.45       | https://www.sudo.ws/ |
| sysvinit-utils | 3.01-1ubuntu1 | 0.08       | https://savannah.nongnu.org/projects/sysvinit |
| tar | 1.34+dfsg-1ubuntu0.1.22.04.2 | 0.94       | https://www.gnu.org/software/tar/ |
| tzdata | 2024a-0ubuntu0.22.04.1 | 3.81       | https://www.iana.org/time-zones |
| ubuntu-keyring | 2021.03.26 | 0.04       |  |
| usrmerge | 25ubuntu2 | 0.20       | https://wiki.debian.org/UsrMerge |
| util-linux | 2.37.2-4ubuntu3.4 | 3.32       | https://www.kernel.org/pub/linux/utils/util-linux/ |
| vim | 2:8.2.3995-1ubuntu2.17 | 3.84       | https://www.vim.org/ |
| vim-common | 2:8.2.3995-1ubuntu2.17 | 0.37       | https://www.vim.org/ |
| vim-runtime | 2:8.2.3995-1ubuntu2.17 | 32.01      | https://www.vim.org/ |
| wget | 1.21.2-2ubuntu1.1 | 0.91       | https://www.gnu.org/software/wget/ |
| xxd | 2:8.2.3995-1ubuntu2.17 | 0.27       | https://www.vim.org/ |
| xz-utils | 5.2.5-2ubuntu1 | 0.36       | https://tukaani.org/xz/ |
| zlib1g | 1:1.2.11.dfsg-2ubuntu9.2 | 0.16       | http://zlib.net/ |
