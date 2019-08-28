#!/bin/bash

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))"h"
}

cd /home
git config --global user.name "用户名字"
git config --global user.email "用户邮箱"
# 例子: git clone git@gitee.com:用户名/仓库名.git，不要使用https协议，我这里是gitee，不是github，但支持
git clone git@xxxxxxx
cd 仓库名
while true ;do
  date >> test.log
  git add .
  git commit -m "update"
  git push
  # 随机生成下一次提交的间隔时间 1 到 18 内的数字，单位是小时
  value=$(rand 1 18)
  echo $value
  sleep $value
done