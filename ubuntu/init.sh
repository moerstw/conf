apt-get update
apt-get -y install git
apt-get -y install make
apt-get -y install ruby-dev
apt-get -y install gcc
apt-get -y install build-essential
apt-get -y install libxml2-utils
# please setting private key complete
git config --global user.name "moerstw"
git config --global user.email "moerstw@gmail.com"
git config --global core.editor "vim"

git clone https://github.com/moerstw/vimrc ~/.vim
cd ~/.vim
git submodule update --init
./install-vimrc.sh
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
# 14.04
# sudo apt-get install update-manager-core python-apt
# cat "Prompt=normal" >> /ect/update-manager/release-upgrade
# sudo do-release-upgrade -d
# sudo sh -e crouton -n trusty -u
