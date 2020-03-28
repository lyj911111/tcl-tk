
# 
# a변수에 십진수 10 + 16진수 10 + 8진수 10 을 더함. 그리고 출력
set a [expr 10 + 0x10 + 010]
puts $a

# b변수에 부동소수점과 삼각함수를 곱하여 출력. 
set b [expr 2.0 * asin(1.0)]
puts $b


# " " 내에서 $를 이용해 변수의 값 참조.
set var 123
puts "result = $var" ; 

# { }로 묶을 시 참조없이 문자 그데로 인식
puts {result = $var}

# \백 슬래쉬를 이용하면 특수문자를 자체로 출력하게 함.
puts "result = \$var"

#현재 경로를 나타내는 예약어 pwd, ""랑 {}랑 비교해보기
puts "result = [pwd]"
puts {result = [pwd]}
puts "result = \[pwd\]"

# 앞과 뒤의 모양을 스캔하여 a, b변수에 넣어줌
scan "123.456" "%d.%d" a b
puts $a
puts $b

