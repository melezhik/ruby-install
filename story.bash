#set -x
set -e

if /usr/local/rvm/bin/rvm list|grep ruby- | grep '=*' 1>/dev/null 2>&1; then

  source /usr/local/rvm/scripts/rvm

  echo ruby version: $(ruby --version)

  bundler --version

  
else

  curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -

  \curl -sSL https://get.rvm.io | bash -s stable --ruby

  source /usr/local/rvm/scripts/rvm

  gem install bundler --no-ri --no-rdoc

  echo ruby version: $(ruby --version)

  bundler --version


fi

