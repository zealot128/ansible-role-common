set -e
echo $1
export LANGUAGE=$1
export LANG=$1
export LC_ALL=$1
locale-gen $1
dpkg-reconfigure locales
update-locale LANG=$1

