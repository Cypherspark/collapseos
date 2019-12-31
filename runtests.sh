#/bin/sh -e

git submodule init
git submodule update
git clean -fxd

make -C emul
make -C tests

# let's try again with an updated zasm
make -C emul updatebootstrap all
make -C tests
