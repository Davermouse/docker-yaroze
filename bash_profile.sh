echo Welcome to docker-yaroze

if [ ! -d "/root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/source/check" ]; then
  echo Copying sample check project into /root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/sample/check.
  echo To make the standard check project:
  echo \$ cd source/check
  echo \$ make

  cp -r "/root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/sample/check" "/root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/source/check"
fi
