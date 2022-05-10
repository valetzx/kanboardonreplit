sh startpg.sh
pg_ctl stop
pg_ctl -l ./postgresql.log start

if [ ! -f "kanboard" ];then
#PG创建数据库：typecho
create -h 127.0.0.1 -p 5432 user admin with password 'admin';
createdb -h 127.0.0.1 -p 5432 kanboard
git clone https://github.com/kanboard/kanboard
fi

cp config.php kanboard
php -S 0.0.0.0:8000 -t kanboard
