#!/bin/sh

which mysql > /dev/null 2>&1
if [ $? == 0 ]; then
  echo '';
else
  echo "\n 请安装MySQL客户端 \n";
  exit;
fi

mysql -uroot -padmin -h127.0.0.1 < scripts/database/init.sql
mysql -uroot -padmin -h127.0.0.1 onMovie < scripts/database/data.sql
clear
echo "\n\n 重建数据完成 \n"
