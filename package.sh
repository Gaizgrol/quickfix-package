QF_VERSION='1.15.1.20240724'

rm -rf quickfix

git clone --depth 1 https://github.com/quickfix/quickfix.git
cd quickfix
git reset --hard 94625580bfd50c1ebba3f704a88c9e3c392f9fb1
rm -rf ./.git
cd ..

pushd quickfix/doc
./document.sh
popd

pushd quickfix
../git2cl > ChangeLog
cp README.md README
./bootstrap
popd

rm -f quickfix-$QF_VERSION.tar.gz

tar czvf quickfix-$QF_VERSION.tar.gz quickfix

pushd quickfix
./configure --with-postgresql --with-python3 && make && make check
popd
