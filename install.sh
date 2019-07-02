echo Welcome to emacs26.2 setup!
echo Installing build tools and dependencies ...
sudo apt install build-essential checkinstall texinfo libx11-dev libxpm-dev libpng-dev libtiff-dev libgtk2.0-dev libncurses-dev -y
echo Installing build and config dependencies ...
sudo apt-get build-dep emacs24 libgnutls28-dev mailutils libgif-dev libcanberra-gtk-module -y
echo Downloading emacs source code ...
cd ~
curl http://ftp.gnu.org/gnu/emacs/emacs-26.2.tar.gz
echo Extracting source code ...
tar -xvzf emacs-26.2.tar.gz
echo Removing compressed emacs source code package ...
rm -rf emacs-26.2.tar.gz
cd emacs-26.2/
echo Running configure script
./configure
make
sudo checkinstall
echo Done installing emacs 26.2! Remove using:  dpkg -r emacs
echo Fetching emacs config
cd ~
cd .emacs.d/
curl http://raw.githubusercontent.com/beanilsson/emacs_config/master/init.el -o init.el

# source: ubuntuhandbook.org/index.php/2016/09/install-gnu-emacs-25-1-in-ubuntu-16-04
