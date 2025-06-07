#!/bin/bash

echo "👉 テスト1: 正常系 gcd(8, 12)"
if [ "$(./gcd.sh 8 12)" -ne 4 ]; then
  echo "❌ Test failed: gcd(8, 12) != 4" >&2
  exit 1
fi

echo "👉 テスト2: 引数不足"
./gcd.sh 8 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "❌ Test failed: 引数1個で正常終了した" >&2
  exit 1
fi

echo "👉 テスト3: 引数過多"
./gcd.sh 8 12 16 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "❌ Test failed: 引数3個で正常終了した" >&2
  exit 1
fi

echo "👉 テスト4: 数字以外"
./gcd.sh A B > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "❌ Test failed: 文字列で正常終了した" >&2
  exit 1
fi

echo "✅ All tests passed"
