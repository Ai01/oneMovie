#!/bin/sh

which mysql > /dev/null 2>&1
if [ $? == 0 ]; then
  echo '';
else
  echo "\n 请安装MySQL客户端 \n";
  exit;
fi

echo '重建数据库结构'
mysql -uroot -padmin -h127.0.0.1 < scripts/database/init.sql
mysql -uroot -padmin -h127.0.0.1 oneMovie < scripts/database/base.sql

echo 'migrate'
npm run migrate

echo '备份数据'
mysqldump -h127.0.0.1 -uroot -padmin onMovie > scripts/database/data.sql


