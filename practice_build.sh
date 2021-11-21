#!/bin/bash

echo "===================================build practice.exe start==================================="

CUR_DIR=$(pwd)    # 注意如果是执行命令行命令的话要加括号！ 或者用``来代替$()
echo "current dir: $CUR_DIR"
TARGET_DIR="/home/tanweimin/code/program_practice/ALGORITHM/sort/pt"
TARGET_BUILD_DIR=$TARGET_DIR/build

if [ -d $TARGET_BUILD_DIR ];then
    echo "recreate build dir: $TARGET_BUILD_DIR"
    rm -rf $TARGET_BUILD_DIR
else
    echo "create build dir: $TARGET_BUILD_DIR"
fi

mkdir -p $TARGET_BUILD_DIR && cd $TARGET_BUILD_DIR

cmake ..
make

if [ -e practice.exe ];then
    echo "build success!!"
else
    echo "build practice.exe failed."
fi

cd $CUR_DIR

echo "===================================build practice.exe end==================================="