#set -x
set -e

if /usr/local/rvm/bin/rvm list|grep ruby- | grep '=*' 1>/dev/null 2>&1; then
  source /usr/local/rvm/scripts/rvm
else
  curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
  source /usr/local/rvm/scripts/rvm
  gem install bundler --no-ri --no-rdoc
fi

rvm --version
ruby --version
bundler --version
