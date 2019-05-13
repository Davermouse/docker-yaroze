# Docker-yaroze - a Yaroze build environment for modern PCs

You should be able to get a working environment by installing Docker Desktop and then running:

`docker-compose run yaroze`

in this folder.

This will map the `source/` subdirectory in this folder to `/root/mipsel-ecoff-toolchain/yaroze/mipsel-ecoff/source` inside the VM, where you should be able to build code such as https://github.com/ChrisRx/mipsel-ecoff-toolchain/tree/master/sdk/sample/check with no further changes.

I've also include `bin2h` in the built VM, as I find that handy for integrating textures and similar in the final executable.

Using `siocons` locally in a different terminal on my Mac I've then been able to push binaries built here into my Yaroze.

Many thanks to ChrisRx at https://github.com/ChrisRx/mipsel-ecoff-toolchain for doing the hard work figuring out how to build and patch a working GCC version for Yaroze.
