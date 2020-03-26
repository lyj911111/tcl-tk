#!/usr/bin/tclsh
# 1st line is for Linux user

# Tcl syntax

# 콘솔창에 hello world 출력 (모두 같음)
# puts : 콘솔에 출력

puts "hello world"
puts {hello world}
puts stdout {hello world}
puts stdout "hello world"

# 변수 선언과 사용 #동일한 줄에 ;로 구분 가능
# set {변수명} {값} : 변수에 값 대입
# ${변수명} : 변수값 불러오기

set a 1 ; set b 2 ;  
puts stdout $a ;     
puts stdout $b ;

# 계산하여 출력

puts [expr 3 + 2]
puts [expr $a - $b]
set c [expr $a * $b] ; # 두 계산값을 c에 저장
puts $c

# 문자열도 타입상관 없이 변수에 들어감
# 여러 문자열을 묶을 때, "" 나 {} 사용
set a hello ; set b world ;
set c "hello world yo"
set d {I am also hello world}
puts stdout $a ;  
puts stdout $b ;
puts stdout $c ;
puts stdout $d ;

# 리스트 만들기
# lindex로 몇번쨰 인덱스인지 추출하기
set myList {red green blue}
puts [lindex $myList 2]
puts [lindex $myList 0]











