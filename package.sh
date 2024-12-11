QF_VERSION='1.15.1.20240724'

rm -rf quickfix

git clone --depth 1 https://github.com/Gaizgrol/quickfix.git
rm -rf quickfix/.git

pushd quickfix/doc
./document.sh
popd

pushd quickfix
../git2cl > ChangeLog
popd

rm -f quickfix-$QF_VERSION.tar.gz

tar czvf quickfix-$QF_VERSION.tar.gz quickfix

pushd quickfix
cp README.md README && ./bootstrap && ./configure --with-postgresql --with-python3 && make && make check
popd
