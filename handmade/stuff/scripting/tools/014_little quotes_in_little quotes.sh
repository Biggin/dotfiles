#!/data/data/com.termux/files/usr/bin/bash

# 작은 따옴표로 둘러싼 문자열 안에서 변수 확장 / 작은따옴표 기호를 사용하고 싶을 경우

price=100
str='It costs $'$price'? I can'\''t believe it!'

echo $str



# 큰 따옴표로 둘러싼 문자열은 변수 확장과 명령어 치환을 하기 때문에 $와 ₩는 따옴표 안에서도 변수 확장, 명령어 치환 의미를 그대로 가짐
# 작은 따옴표는 단순한 따옴표로 그대로 출력함

# 큰 따옴표 안에 큰 따옴표를 쓰려면 \ 기호로 큰 따옴표를 이스케이프함
str2="He said \"Hello!\". I said \"Hello\"."

echo $str2

# 큰 따옴표가 많은 문자열이면 매번 처리하는게 힘듬. 그럴 경우 작은 따옴표로 처리하면 됨

str3='He said "Hello!". I said "Hello".'

echo $str3

# 작은 따옴표 안에선 변수 확장이 안됨
# 따라서 $'$price' 처럼 끊어서 변수 확장을 유도함