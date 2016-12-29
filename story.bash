set -x
set -e

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -

\curl -sSL https://get.rvm.io | bash -s stable --ruby

source /usr/local/rvm/scripts/rvm

gem install bundler --no-ri --no-rdoc

echo ruby version: $(ruby --version)

bundler --version
