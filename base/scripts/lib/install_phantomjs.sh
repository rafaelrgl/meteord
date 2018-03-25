# Install PhantomJS
set -e
apt-get -y install libfreetype6 libfreetype6-dev fontconfig
sudo apt-get install -y build-essential g++ flex bison gperf ruby perl \
sudo apt-get install -y libsqlite3-dev libfontconfig1-dev libicu-dev libssl-dev
sudo apt-get install -y libpng-dev libjpeg-dev python libx11-dev libxext-dev ttf-mscorefonts-installer

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
