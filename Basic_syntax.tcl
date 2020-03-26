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
set a hello ; set b world ;
puts stdout $a ;  
puts stdout $b ;











