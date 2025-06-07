#!/bin/bash

# 最大公約数を求める関数
gcd() {
    a=$1
    b=$2
    while [ "$b" -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

# 引数チェック
if [ "$#" -ne 2 ]; then
    echo "Error: 2つの自然数を指定してください。" >&2
    exit 1
fi

# 数字か確認
if ! [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]]; then
    echo "Error: 自然数を入力してください。" >&2
    exit 1
fi

gcd "$1" "$2"

