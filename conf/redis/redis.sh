 #--------------------------------------------------------------------------------------
# Install Redis
#-------------------------------------------------------------------------------------
apt-get install gcc make automake tcl8.5
cd /tmp
REDISVER=redis-3.0.5
PORT=6379
CONFIG_FILE=/etc/redis/6379.conf
LOG_FILE=/var/log/redis_6379.log
DATA_DIR=/var/lib/redis/6379
EXECUTABLE=/usr/local/bin/redis-server
CLIEXECUTABLE=/usr/local/bin/redis-cli

wget http://download.redis.io/releases/$REDISVER.tar.gz
sudo tar -xzvf $REDISVER.tar.gz
cd /tmp/$REDISVER && sudo make  
cd /tmp/$REDISVER/src && sudo make test && sudo make install
cd /tmp/$REDISVER/utils 
#sudo sh install_server.sh
echo -e "${PORT}\n${CONFIG_FILE}\n${LOG_FILE}\n${DATA_DIR}\n${EXECUTABLE}\n${CLIEXECUTABL}\n" | sudo /tmp/$REDISVER/utils/install_server.sh


sudo apt-get install gcc make autoconf libc-dev pkg-config
apt-get -y install php-pear php5-dev
sudo pecl install redis

cd /tmp
wget https://github.com/nicolasff/phpredis/zipball/master -O phpredis.zip
unzip phpredis.zip
cd phpredis-* && phpize && sh configure
make && make test && make install

touch /etc/php5/conf.d/redis.ini
touch /etc/php5/mods-available/redis.ini
echo extension=redis.so > /etc/php5/mods-available/redis.ini

ln -s /etc/php5/mods-available/redis.ini /etc/php5/apache2/conf.d
ln -s /etc/php5/mods-available/redis.ini /etc/php5/cli/conf.d
ln -s /etc/php5/mods-available/redis.ini /etc/php5/fpm/conf.d

php -r "if (new Redis() == true){ echo \"\r\n OK \r\n\"; }"
read -p "Press [Enter] key to continue..." readEnterKey


