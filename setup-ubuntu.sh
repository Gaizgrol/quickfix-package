apt-get -y install git doxygen graphviz libtool g++ python3 python3-dev libpq-dev libssl-dev

# Autoconf precisa ser a versão 2.71
wget --no-check-certificate https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.xz
tar -xf autoconf-2.71.tar.xz
cd autoconf-2.71
./configure
make
make install
. ~/.bashrc
cd ..
rm -rf autoconf-2.71
