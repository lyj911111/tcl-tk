# 함수만들기

# foo에 3을 대입
set foo 3

# add함수, 입력 인자 a,b에 전역변수  foo까지 더해서 리턴.
proc add {a b} \
{
	global foo ; # 전역변수 선언
	return [expr $a + $b + $foo]
}
# add함수에 1,2인자를 넣어서 출력
puts [add 1 2]
# add함수 리턴값을 addfunc값에 넣어서 출력
set addfunc [add 2 3]
puts $addfunc




# 디폴트 인자(기본값이 정해져있음), 참조형 인자(인자를 넣어도 되고 안 넣어도 되고)
# 여기서 a는 필수인자, ref는 참조인자(넣어도 되고 안넣어도 되고), 1은 값을 안넣을때 자동으로 ref값은 1임.(디폴트 값)
proc plus {a {ref 1}} \
{
	upvar $a r 				; # $a 와 r 을 alias시킴. (r = $a)
	set r [expr $r + $ref]	; # 입력인자 a=r 과 참조인자 더해 r에 대입.
	return $r
}

set var 1
# a에 인자를 대입,  ref값을 안 넣었으므로 자동으로 1이 됨.
puts [plus var]
puts [plus var 2]  ; # 참조변수로 2를 넣었으므로 ref가 2가 들어가게 됨.




#가변인자 (제한 없이 여러 인자 대입 가능)
proc sum {args} \
{
	set s 0
	foreach i $args {
		set s [expr $s + $i]
	}
	return $s
}
puts [sum 1 2 ]
puts [sum 1 2 3 4]	; #인자를 마음데로 넣음. (띄어쓰기가 구분자)