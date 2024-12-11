apt-get install git
apt-get install doxygen
apt-get install graphviz

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

apt-get install libtool
apt-get install g++
apt-get install ruby
apt-get install ruby-dev
apt-get install python
apt-get install python-dev
apt-get install libpq-dev
