sudo update-locale LC_ALL="en_US.utf8"

# Add Ruby sources
sudo apt-add-repository ppa:brightbox/ruby-ng

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git \
                        redis-server \
                        nodejs \
                        ruby2.3 \
                        ruby2.3-dev \
                        libxml2 \
                        libxml2-dev \
                        libxslt1-dev \
                        zlib1g-dev \
                        libsqlite3-dev

gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/

echo 'Install bundler'
sudo gem install bundler --no-rdoc --no-ri

echo 'Install Rails.5.rc1'
sudo gem install rails --pre --no-rdoc --no-ri

bundle config mirror.https://rubygems.org https://ruby.taobao.org

echo "all set, let's rock!"
