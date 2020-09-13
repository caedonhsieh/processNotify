DIR=$(dirname $0)
if [ $DIR = '.' ]; then
	DIR=$PWD
fi
echo export PATH="\$PATH:$DIR" >> ~/.bash_profile
echo $PATH
source ~/.bash_profile
echo $PATH
