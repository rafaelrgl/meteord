# Install PhantomJS
set -e
sudo apt-get install build-essential g++ flex bison gperf ruby perl \
sudo apt-get install libsqlite3-dev libfreetype6 libfontconfig1-dev libicu-dev libfreetype6 libssl-dev
sudo apt-get install libpng-dev libjpeg-dev python libx11-dev libxext-dev ttf-mscorefonts-installer

ARCH=`uname -m`
PHANTOMJS_VERSION=2.1.1
PHANTOMJS_TAR_FILE=phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}.tar.bz2

cd /usr/local/share/
curl -L -O https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}.tar.bz2
tar xjf $PHANTOMJS_TAR_FILE
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/local/share/phantomjs
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/local/bin/phantomjs
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/bin/phantomjs

rm $PHANTOMJS_TAR_FILE
