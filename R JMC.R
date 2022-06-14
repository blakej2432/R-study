R

뉴질랜드 오클랜드 대학 Ross ihaka, Robert Getleman
1995년 개발한 소프트웨어이고 데이터 분석을 위한 통계
그래픽스를 지원하는 무료 소프트웨어이다.

R을 사용해야 하는 이유??
- 무료 소프트웨어
- R은 소스코드형태로 Free software foundation의 gnu 조건에 따라
자유소프트웨어로 사용할 수 있다.
- 다양한플랫폼에서 사용할 수 있다.
- 데이터 분석을 위해서 가장 많이 쓰는 통계플랫폼이다.
- 누구든지 유용한 패키지를 생성해서 공유할 수 있고 새로운 기능에 대한
전달이 빠르다.
- 복잡한 데이터를 다양한 그래프로 제공해준다. (시각화)
- 인터프리터(interpreter) 언어: 바로 실행 후 결과를 확인하는 언어.
컴파일 없이 바로 결과를 확인할 수 있는 장점
- 통계 분석, 머신러닝, 딥러닝 관련 프로그램도 있다.
- stata, SAS. SPSS 등 통계분석 소프트웨어와 더불어 많이 사용되고 있다.

R 버전확인
version

print("오늘 하루도 행복하자")



변수(VARIABLE)
- 데이터를 저장하는 메모리 공간
- 저장된 데이터를 변경할 수 있다.
- 변수이름은 알파벳, 숫자, 특수문자(_ .)를 사용한다.
- 변수이름은 첫글자는 알파벳 또는 .(마침표)를 사용한다.
- 변수이름을 .(마침표)로 시작할때는 바로 뒤에 숫자를 입력할 수 없다.
- 대소문자를 구분한다.
- 예약어를 변수이름으로 사용하지 말자!
  
help(reserved)
?sum

예) 변수이름으로 가능
a, A, x2, .x, xy, xy.coords(

예) 변수이름으로 불가능
1x, .1, x-y, x^y


# 변수에 값을 할당하는 연산자(<-,<<-,=, ->)

x <- 1 변수 넣을 때는 밑에 애들보다 이걸로 하자 <-
x
X

1 -> y
y

x <<- 10
x = 100

x_1 <- 10
x_2 <- 20

# 메모리에 생성된 변수 확인
ls()

# 메모리에 생성된 특정한 변수를 삭제
rm(x_1)

# 메모리에 생성된 변수 전부 삭제
rm(list=ls())

# 숫자, R은 기본 숫자는 실수형으로 입력된다.
x <- 1
x
class(x) #변수의 타입 확인, numeric 실수형
typeof(x) #변수의 타입 확인, double 실수형

y <- 1.0
y
class(y)
typeof(y)

z <- 2L # 숫자 뒤에 L을 입력하면 정수형으로 생성된다.
z

class(z) #데이터 타입확인 integer 정수형
typeof(z) #데이터 타입확인 integer 정수형

is.numeric(x) #실수형인지 체크하는 함수, 실수형이면 boolean 값으로 TRUE 리턴
is.numeric(z) #정수형이 실수형에 포함되어 있어서 정수형 변수지만TRUE 리턴

is.integer(x) #정수형인지체크
is.integer(z) 

# 문자열(character)
s1 <- '오늘하루도 행복하자'
class(s1)
typeof(s1)

s2 <- "오늘하루도 행복하자"
class(s2)
typeof(s2)

is.numeric(s1)
is.integer(s1)
is.character(s1) #문자형인지 체크하는함수

#변수의 타입과 값을 확인하는 함수
str(x)
str(z)
str(s1)

#boolean, logical 체크하는 방법
str(TRUE)
str(FALSE)
is.logical(TRUE) #boolean, logical 자료형인지 확인하는 함수
is.logical(FALSE)
class(TRUE)
typeof(FALSE)

str(T)
str(F)
is.logical(T) #boolean, logical 자료형인지 확인하는 함수
is.logical(F)
class(T)
typeof(F)

T <- 100
str(T)

is.logical(T) # 이거봐. 이래서 Reserved를 변수이름으로 쓰면안돼

rm(T)

str(T)

x1 <- TRUE # 이렇게 변수에다가도 boolean값 넣을 수 있어.
x1
str(x1)
class(x1)
typeof(x1)

# 논리연산자
&: AND의 의미
|: OR의 의미

TRUE & TRUE
TRUE & FALSE
FALSE & FALSE

TRUE | TRUE
TRUE | FALSE
FALSE | FALSE

T & T
T & F
F & F

T | T
T | F
F | F

10 == 10 & 1 == 1

x <- TRUE
y <- FALSE

str(x)
str(y)

# NA - Not Available : 결측치(값)
데이터가 입력이 되지 않은 경우
SQL의 NULL

x <- 100
y <- NA
z <- x+y
z

is.na(x) #NA를 체크하는 함수
is.na(y)
is.na(z)

# R 에서의 NULL : 변수에 초기화 되지 않을 때 사용.undefined

값을 설정하지않고 변수만 선언해놓고 싶을 때

x1 <-100
y1 <-NULL
y1
z <- NA
z

is.na(y1)
is.na(z)
is.null(y1) #NULL 체크하는 함수

# 산술연산자

1+2
2-1
2*3
10/2
10/3
10 %/% 3 #몫
10 %% 3 #나머지

10^2 #거듭제곱
10**2 #거듭제곱

#비교연산자
==(같다), !=(같지않다), >(크다), >=(크거나 같다), <(작다), <=(작 같)

1 == 1
1 == 2
1 != 2
1 > 2
1 > 1

# 지수표기법(exponetial notation), 과학표기법(scientific notation)
과학이나 공학에서 큰 숫자를 간단하게표현하는 표기법

10000
100000 # 1e+05
1000000 # 1e+06
1e+05
1*10^5

100e3 == 100*10^3

1e-08 == 0.00000001
1*10^-8 == 0.00000001

?options
options(scipen = 999) # 지수표기법을 사용하지 않을 때 scipen 값을 999로 설정 하면 된다.
10000000

options(scipen = 0) # 지수표기법으로 사용하는 방법(기본값)
10000000

x <- 100000
x
x1 <- format(100000, scientific=FALSE) # 지수표기법으로 사용하고 싶지 않을 때 format을 사용하면 된다.
                                        하지만, 문자로 입력된다.
x1
str(x1)
x1 +100 # 에러

as.integer(x1) + 100 # as.integer 형번환 함수 char -> int 형변환

■ 자료형
1. 단일값만 저장하는 변수, scalar type

x <- 100
x

2.vector(벡터)
- 같은 데이터 타입을 갖는 1차원 배열 구조
- c() : combine value
- 벡터는 중첩할 수 없다.
- 데이터 변환규칙 (integer < double(numeric) < character)

x <- c(10, 20, 30, 40, 50)
x
class(x)
typeof(x)
str(x)
mode(x)

y <- c(10L,2,'삼') # 벡터는 단일 데이터 형만 넣을 수 있어. 이경우 char 우선순위

y
class(y)
typeof(y)
str(y)
mode(y)

z <- c(1,2,3,c(4,5)) # 중첩을 할 수 없으니 안에 있는 c는 풀려버림
z

x <- c("국어"=90, "영어"=95, "수학"=80) # c(컬럼=값, 컬럼=값)
x
names(x) # ★컬럼★이름 확인

y <- c("과목"=c(70,80,90))
y  

names(y) <- c("국어","영어","수학") #컬럼 이름 수정도 가능
y
names(y)[1] #인덱싱
names(y)[2]
names(y)[3]

names(y)[2]<- "과학"
y

names(y)[3] <- NA
y
names(y) <- NULL # 컬럼이름을 삭제.
y

#벡터의 길이
length(y)
NROW(y)

# 인덱싱 : 배열 방번호를 기준으로 찾는다.
# R의 방번호는 1부터 시작한다.

y[1]
y[2]
y[3]
y[length(y)]
y[-1] #1번방 제외
y[c(1, 3)]
y[c(-1,-2)] # 벡터를 이용해서 이렇게 여러개의 방 선택하고 빼는것도 돼

names(y) <- c("국어", "영어", "수학")
y

y["국어"] # 컬럼 이름을 이용해서인덱싱
y[c("국어", "수학")]

y[c(1,2)]

# 슬라이싱
y[1:3]
y[1:2]
y[2:3]
y[-1:-3]

# 연속되는 값을 표현하는 방법
x <- 1:100
x
y <- c(1:10000)
y
# 출력 최대범위 제한으로 그 위 수가 안나오면 

options(max.print = 1000000) #화면의 출력해야할 수를 조절하는 방법
y

options(max.print = 1000) #기본값
y

# SQL : 자동 일련번호를생성하는 객체 = SEQUENCE
# seq(시작값,종료값, 증가분)

seq(1,1000,1)
seq(1,1000,2)
s <- seq(0,100,2)
s

s
10:1
seq(10,1,-1)


x <- c(2,4,6,8,10,12)
x
length(x)
NROW(x)
nrow(x)

# 벡터 변수 길이 만큼 시퀀스 값을 생성
seq(1,length(x),1)
seq_along(x)

# 반복되는 값을 생성하는 함수

1:5
rep(1:10,times=2) # rep times = n시작과 종료까지를 n번반복
rep(1:10,each=2) # each =n 각각의 숫자를 n번 반복
rep(1:10, times=2, each=2)
rep(1:10, each=2, times=2)

x <- 10:15
x

# 벡터의 값을 수정
x[2] <- 16
x[2] <- NA # 결측값으로 수정
x <- NULL #변수 초기화

x <- 10:15
x[7] <- 16
x
x[9] <- 17 #이렇게 건너뛰어서 넣으면 건너뛴 컬럼은 NA가 들어가
x
x[11] <- 18
x[length(x)+1] <- 19 # 젤 뒤에 추가할 때는 length 이용해서 이렇게 할 수 있음
x
# 벡터 제일 뒤에 새로운 값을 추가
x[length(x)+1] <- 19
x
append(x,20,after=length(x)) # append(벡터변수, 새로운값, after=인덱스번호)
append(x,21,after=1) # 미리보기 
x <- append(x,21,after=1) #append는 미리보기니까 이렇게 넣어줘야대
x

# 벡터 연산
x <- 10: 15
x
x[1] + 100
x[2] + 100
x[3] + 100

x+100 #인덱싱 해서 하나하나 안하고 변수에 바로 +100 때리면돼.
x-100
x*100
x/2
x%/%2
x%%2
x^2

# 서로 다른 벡터 변수의 값을 비교
x <- c(1,2,3)
y <- c(1,2,3)
z <- c(1,2,4)

x[1] == y[1]
x[2] == y[2]
x[3] == y[3]

#이거 각각 하는걸 변수로 한번에

x == y # 벡터 변수 안에 있는 인덱스(요소번호, 방번호)끼리 값을 비교
x == z

x == y
identical(x,y) # 각 인덱스가 있는 값을 비교해서 전부 일치하면 TRUE 아니면 FALSE

x == z
identical(x,z)

x <- c(1,2,3,4,4)
y <- c(1,2,3,4)

x==y # 벡터의 길이가 일치하지 않으면 경고메시지가 뜬다.
identical(x,y) #벡터의 길이가 일치하지 않으면 FALSE

x1 <- c(1,2,3)
x2 <- c(2,3,1)
x1 == x2
identical(x1,x2)

# 인덱스 같은 방번호끼리 비교하는게 아니라 값으로만, 
집합개념 원소로만 비교하고싶으면

setequal(x1,x2) # 집합에 있는 값으로 비교하기 때문에 값이 일치하면 TRUE, 아니면 FALSE

setequal(x,y) # 집합은 중복되는 값을 인정 안하니까 여기선 같아져

x <- c(1,2,3,4,4)
y <- c(1,2,3,4,5)

x == y
identical(x,y)
setequal(x,y)

# 집합연산
x <- c(1,2,3,4)
y <- c(1,4,6)

union(x,y) # 합집합 - 집합이니까 중복값 없애!
intersect(x,y) # 교집합
setdiff(x,y) # 차집합
setdiff(y,x)
z <- c(x,y) # SQL 에서 배웠던 UNION ALL
z

x <- c(1,2,3,4)
x

# 벡터 변수에 값이 있는지를 확인
1 %in% x
4 %in% x
5 %in% x

x <- c(1,2,3,4,5,1,2,1)
1 %in% x
x %in% 1 # x 안에 1값이 있으면 그위치에 TRUE, 없으면 FALSE
x == 1
x[x==1]
x[x %in% 1]
x[x%in%2]

y <- c('a', 'b', NA, 'a','b', NA)
y
'a' %in% y
y %in% 'a'
y[y=='a'] # NA까지 포함시켜서 찾는다
y[y%in%'a'] # NA 제외
y[y=='a'|y=='b']
y[y%in%'a'|y%in%'b']  

which(y == 'a')

# 조건에 해당하는 인덱스 번호를 찾는 방법
which(y == 'a')
y[which(y=='a')]

y[which(y=='a')|which(y=='b')] # 이렇게 쓰면 안된다.

이걸 개선하려면
y[which(y=='a' | y=='b')]


# NA 찾는 방법
is.na(y)
y[is.na(y)]

# NA가 있는 인덱스 번호를 찾는 방법
which(is.na(y))
y[which(is.na(y))]

#NA 찾아서 동일한 값으로 수정
y[which(is.na(y))] <- 'c'
y
y[which(is.na(y))] <- 'c' # y[c(3,7)] <- 'c' 이거랑 같은데 3,7값을 모르니까.

y <- c('a','b',NA, 'a','b','d',NA)
y
is.na(y)
!is.na(y)
y[!is.na(y)] # NA 제외하고 뽑기
y[which(is.na(y))] # y[c(3,7)]
y[-which(is.na(y))] # y[c(-3,-7)] 

# 정렬
x <- c(8,7,9,3,2,4,6,5,1)
sort(x)
sort(x,decreasing = FALSE) # 오름차순, 기본값
sort(x,decreasing = TRUE) # 내림차순

x <- 1:5 # 정수
y <- c(1:5) # 정수
z <- c(1,2,3,4,5) # 실수
s1 <- seq(1,5) # 정수
s2 <- seq(1,5,1) # 실수

x
y
z
s1
s2

str(x)
str(y)
str(z)
str(s1)
str(s2)

x == z
identical(x,z) # 벡터 변수의 길이, 인덱스의 값, 데이터타입이 일치해야함
setequal(x,z) # 값으로만 비교
identical(s1,s2)
setequal(s1,s2)

# as.integer 실수형, 문자형숫자를 정수형으로 변환
identical(s1, as.integer(s2))

# as.numeric 정수형, 문자형숫자를 실수형으로 변환
identical(as.numeric(s1),s2)

x <- c('1', '2')
str(x)
as.integer(x) + 100

[문제1] x변수에 1,3,5,7,9 값을 입력, y 변수에 1,2,3,4,5 값을 입력하세요.
x<- seq(1,9,2)
x<- c(1,3,5,7,9)
y<- seq(1,5,1)
y<- c(1,2,3,4,5)

[문제2] x 변수와 y 변수를 중복성 없이 하나로 합친후에 u 변수에 넣어 주세요.
u <- union(x,y)
u<-sort(u)
u
[문제3] x 변수와 y 변수의 값들중에 중복성만 추출해서 i 변수에 넣어주세요.
i <- intersect(x,y)
class(i)
i
[문제4] x 변수의 값과 y 변수의 값중에 순수하게 x 변수에 들어 있는 값만 추출해서 m 변수에 넣어 주세요.
m<-setdiff(x,y)

[문제5] x 변수의 값과 y 변수의 값이 일치가 되면 TRUE 아니면 FALSE를 출력해주세요.
setequal(x,y)
x==y

[문제6] x 변수에 값들을 10을 곱한 결과를 x 변수에 적용하세요.
x <- 10*x
x

[문제7] x 변수에 있는 50을 5로 수정하세요.
x[which(x==50)]<-5

x[x%in%50] <- 5

[문제8]  x 변수에 있는 10 30  5 70 90을  원래의 값으로 1,3,5,7,9로 되돌려 주세요.
단 union, 정수 나누기, sort 만 사용하세요.
x <- c(x[1]/10,x[2]/10,x[3],x[4]/10,x[5]/10)
x

x[-which(x==5)]
x[-which(x==5)]%/%10
x[which(x==5)]
sort(union(x[-which(x==5)]%/%10,x[which(x==5)]))

[문제9] x변수에 11숫자를 제일 뒤에 입력하세요. 단 append와 length를 이용하세요.
x <- append(x,11,after=length(x))
x

[문제10] x 변수에 제일 뒤에 있는 값을 NA로 수정하세요. 단 length를 이용하세요.
x[length(x)] <- NA
x


x<-10
x<-10


3. list
- 서로 다른 데이터 타입을 갖는 벡터를 저장하거나 
  다른 리스트를 저장할 수 있는 구조 
- list(key=value, key=value)

x <- list(name='홍길동',age=20, addr='강남구',pn='010-1000-1004')
x

str(x)
class(x)
typeof(x)
mode(x)

x$name #특정 밸류 불러내기
x$age
typeof(x$name) # 리스트에 특정한 키의 타입을 확인

# 인덱싱
x[1] # key, value
x[2]
x[3]
x[4]

x$name
x[[1]] # value 값만

x[-1] # 1번 인덱스의 키, 값은 제외

# 슬라이싱sadsadsafsa
x[1:2]
 추가
x$sal <- 1000
x

# list 키, 값을 삭제
x$sal <- NULL
x

# list 중첩을 사용할 수 있다.
y <- list(a = list(d=c(1,2,3)),
      b = list(d=c(1,2,3,4)))
y

y
y$a
y$a$d
y$b
y$b$d

#list 키 이름을 확인
names(y)
names(y)[1]
names(y)[2]

names(y)[1] <- 'A'
names(y)[2] <- 'B'
names(y)
names(y$A) <- 'D'
names(y$B) <- 'E'

y$A$D
y$B$E
y$A
y

[문제11] lst 변수에 name = 'king' , height = 180, weight = 70 값을 입력해 주세요.
lst <- list(name = 'king', height = 180, weight = 70)
lst
[문제12] lst 변수에  blood = 'A' 추가하세요.
lst$blood <- 'A'
lst

[문제13] lst 변수에 name의 값을 'scott'로 수정하세요.
lst[[1]] <- 'scott'
lst$name <- 'scott'

[문제14] lst변수에 2번인덱스 값만 출력해주세요.
names(x)[2]

[문제15] lst변수에 blood 이름을 blood type 이름으로 수정하세요.
names(x)[4] <- 'blood type'
x$blood type

'blood'%in%names(lst)
names(lst)%in%'blood'
names(lst)[which(names(lst)%in%'blood typ')] <- 'blood type'
lst
lst$name
lst$'blood type'

lst
is.list(lst) # list 자료형인지 체크하는 함수
is.numeric(lst)
is.character(lst)
is.numeric(lst$height)
class(lst)

as.character(lst) # list -> vector(문자형)으로 자료형을 변환할 수 있다.
as.integer(lst) # 숫자를 문자로는 되는데 문자를 숫자로 안되니까 문자는 NA값으로 남겨버려
as.numeric(lst)

lst_new <- unlist(lst) # list -> vector 형으로 변환하는 함수, 키 > 컬럼으로 변환된다.
is.character(lst_new)
names(lst_new)

class(lst_new)

lst_new['name']

lst_new2 <- as.list(lst_new) # vector -> list 자료형 변환하는 함수
is.list(lst_new2)

lst_new2$height <- as.numeric(lst_new2$height) #charactor -> numeric 형변환함수

str(lst_new2)

4. matrix(행렬)
- 수나 문자를 직사각형 형태로 나타낸 자료형
- 벡터처럼 한가지 유형의 타입만 저장한다.
- 행(가로)과 열(세로)로 구성된다.

matrix(c(1:9))
matrix(c(1:9),nrow=3)
matrix(c(1:9),ncol=3)
matrix(c(1:10),nrow=2,ncol=5)
x <- matrix(c(1:12),ncol=2,nrow=6)
x
str(x)
class(x)
is.integer(x)
is.numeric(x)
is.character(x)
is.matrix(x)


dim(x) # 행렬의 크기. 6 x 2 , 행의 수 x 열의수
NROW(x) #행의수
nrow(x) # 행의수
ncol(x) # 열의수
length(x) # 행렬 안에 들어 있는 값의 수

dim(x)[1] # 행의수
dim(x)[2] # 열의수

z <- c(1:9)
length(z)
nrow(z) # 소문자 nrow는 벡터에서는 안돼
NROW(z)
z

matrix(c(1:9),ncol=3) # byrow=FALSE : 열기준으로 값을 채움, 기본값
matrix(c(1:9),ncol=3,byrow=FALSE)
matrix(c(1:9),ncol=3,byrow=TRUE) # byrow=TRUE : 행기준으로 값을 채움

x <- matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=T,
       dimnames = list(c('row1','row2'),
                       c('col1','col2'))) # 여기서 행 렬 이름 붙일 때 list!

x
dimnames(x)
class(dimnames(x))
dimnames(x)[1] # 행의 이름
dimnames(x)[[1]]

dimnames(x)[2] # 열의 이르
dimnames(x)[[2]]
x
x[[1]]

y <-matrix(c(1:9),ncol=3)

#행렬의 이름 수정
dimnames(y) <- list(c('row1','row2','row3'),
                    c('col1','col2','col3'))
y

#행이름 수정
rownames(y) <- c('r1','r2','r3')
y
dimnames(y)[[1]]<-c('row1','row2','row3')
y

rownames(y)[2] <- 'r2'
'r2' %in% rownames(y)
which (rownames(y) %in% 'r2')            
which(rownames(y) == 'r2')
rownames(y)[which (rownames(y) %in% 'r2')] <- 'row2'
y

#열이름 수정
colnames(y) <- c('c1','c2','c3')
dimnames(y)[[2]] <- c('col1','col2','col3')
y
colnames(y)[2] <- 'c2'
y
colnames(y)[which(colnames(y) %in% 'c2')] <- 'col2'
y

cell <-c(1:9)
rname <- c('a','b','c')
cname <- c('c1','c2','c3')
x <- matrix(cell,nrow=3,byrow=T,dimnames=list(rname,cname))
x

# 전치행렬(transposed matrix), 행과 열의 위치를 바꾼 행렬
t(x)
x
x_t <- t(x)
x_t

# 그 다음에 행렬 이름 이렇게 바꿔줘야 처음에 byrow 다르게 한 효과
rownames(x_t) <-rownames(x)
x_t
colnames(x_t) <- colnames(x)
x_t

# 행렬의 인덱싱
x[1,1] # 행인덱스, 열인덱스
x[1,2]
x[2,3]
x[2,] # 그 행 전체
x[,3] # 그열전체

x[-1,] # 행제외
x[,-3] # 열제외외
x[-1,-3]


x[c(1,3),] #특정한 행들 추출
x[,c(1,3)] #특정한 열들 추출
x[c(1,3),2] #특정한 행과 열

x['a',] #행이름으로 추출
x[, 'c3'] #열이름으로 추출

which(x==10) #행열 안의 값을 열 기준으로 세서 찾는다!!
which(x==2)
x
which(x==6)

x<-matrix(c(1:4),ncol=2)
x

#행렬의 연산
x+10
x-10
x*10
x/2
x%/%2
x%%2

y <- matrix(c(5:8),ncol=2)
y
x+y # 행렬의 같은 위치에 있는 성분끼리 더하는 작업
x-y
x*y
x/y
x%/%2
x%%2

#행렬의 곱
x
y
x %*% y


 1 3    5 7      
 2 4    6 8
 
# 곱할 수 있으려면?
 
2 * 2 2 * 2
4 * 3 3 * 2

# 정방행렬(square matrix) : 같은 수의 행과 열을 가지는 행렬
2*2, 3*3

# 항등행렬(identity matrix), 단위행렬(unit matrix)
대각성분이 모두 1이고 나머지 성분이 0인 정방행렬

diag(4)
diag(3)

# 대각행렬(diagonal matrix) : 대각 성분이 아닌 모든 성분이 0인 행렬

a <- c(1:3)
diag(a)
diag(2,nrow=3)
a
# 역행렬(invertible matrix)
solve(x)
x %*% solve(x)
x

x <- c(1:4)
y <- c(5:8)

x
y
z <- cbind(x,y) # 벡터를 열로 병합해서 행렬로만듬
z
class(z)

r<-rbind(x,y) # 행결합
r
class(r)

[문제16] x 변수에 행렬을 구성하세요. 값은 1부터 10까지 입력하시고 5행 2열으로 만들면서 값은 열을 기준으로 생성하세요.
x <- matrix(c(1:10),nrow=5, ncol=2,byrow=F)
x
[문제17] x 변수에 열을 기준으로 11,12,13,14,15 값을 추가하세요.
x <- cbind(x,c(11:15))
x

# 이렇게 굳이 새로운 거 안만들고 바로 cbind 가능
x <- cbind(x,c((11:15)))

[문제18] x 변수에 행을 기준으로 16,17,18 값을 추가하세요.
z <- c(16,17,18)
x <- rbind(x,c(16,17,18))
x
# 이것도 다시

[문제19] x변수에 6행의 값을 20,21,22 로 수정하세요.
x[6,] <- c(20,21,22)

x <- cbind(x,c
x
[문제20] x 변수에 6행을 제거해주세요.
x<-x[-6,]
x
dim(x)

dim(x) <- c(3,5) #5행 3열 -> 3행 5열로 수정
dim(x) <- c(1,15)
x

dim(x) <- c(15,1)
x

5. array(배열)
- 같은 데이터 타입을 갖는 3차원 배열구조

x <- array(c(1:9),dim=c(2,3))
x
class(x)
str(x)
mode(x)

y<- array(c(1:24),dim=c(2,3,4)) # dim=c(행,열,면)
y
class(y)
mode(y)

y[1,1,1]
y[,,1]

dimnames(y) <- list(c('r1','r2'),c('c1','c2','c3'),c('d1','d2','d3','d4'))
rownames(y)
colnames(y)
y

dimnames(y) <- NULL # 행과 열 이름제거
y

dim(y)
dim(y) <- c(3,4,2)
y

[문제21] x 배열을 생성하세요. 1부터 12까지 값을 가지고있는 배열을 생성하세요. 면은 3개가 만들어지도록하세요.
x <- array(c(1:12),dim=c(2,2,3))
x
[문제22] x 배열 변수에 컬럼이름은 'a','b'로 설정하세요.
colnames(x) <- c('a','b')
dimnames(x)[[2]]
x
[문제23] x 배열 변수에 행이름은 'row1','row2'로 설정하세요.
rownames(x) <- c('row1','row2')
dimnames(x)[[3]]<- c('row1','row2')
x
[문제24] x 배열 변수에 면을 2로 수정하세요.
dim(x) <- c(3,2,2)
x

6.factor
- 범주형 데이터를 표현하는 자료형
- (좋음, 보통, 나쁨), (남자, 여자), 거주지역, 혈액형
- 종류: 순위형, 순서형(ordinal), 명목형(nominal)

x <- factor("보통", level=c("좋음","보통","나쁨"))
str(x)
x

y <- factor("보통", level=c("좋음","보통","나쁨"), ordered =T) #순위형 factor

y

is.factor(x)
is.ordered(x)


nlevels(x) # factor level 수 확인

levels(x) # factor level 값 확인

levels(y)[1]
levels(y)[levels(y) %in% "좋음"] <- "매우 좋음" #이거 두개 차이가 뭘까
levels(y)[which(levels(y) %in% "좋음")] <- "매우 좋음"
levels(y)

levels(y) <- c('good','normal','bad') #factor level 값 수정
y

[문제25] 벡터에 있는 값 "좋음", "보통", "그냥", "나쁨", "좋음", "보통" 을 factor 변수로 구성하세요. 
변수이름은 x로 생성하시고 level은  나쁨, 보통, 좋음 순으로 지정하세요.
factor("좋음", level=c("나쁨","보통","좋음"))
x<-factor(c("좋음","보통","그냥","나쁨","좋음","보통"),level=c("나쁨","보통","좋음"))
x[is.na(x)]
x[which(is.na(x))]
x[NA]
x

[문제26] x factor형 목록이름중에 좋음을 매우좋음으로 수정하세요.
levels(x)[which(levels(x) %in% "좋음")] <- "매우좋음"

is.factor(x)
is.ordered(x)
x<- as.ordered(x)
x

매우좋음, 보통, 나쁨으로 바꾸고싶으면

#factor의 levels 순서를 바꾸려면
1) factor형을 vector형으로 변환
y<- as.vector(x)
y

2) vector형을 factor형으로 변환
y <- factor(y,levels=c("매우좋음","보통","나쁨"),ordered=T)
y
# 그냥 이름만 바꾸는거 말고 순서 바꾸려면 꼭 벡터로 바꿔서 다시 넣어줘야대!!!!

7.data frame
-데이터베이스의 table이라고 보면 된다.
-행과 열로 구성되어 있다.
-서로 다른 데이터타입을 갖는 2차원 테이블 구조(배열) 구조
  서로 다른 데이터타입을 갖는다는게 matrix, array랑 다른 점

df<-data.frame(name=c('scott','harden','curry'),
           sql=c(90,80,70),
           r=c(80,70,90))
df
str(df)
mode(df) # 서로다른 값 list도 가질 수 있으니까 list로 나와
서로 다른 리스트들이 모여서 data frame이 된다고 생각하면돼.

df$name # 특정한 컬럼 확인
df$sql

dim(df)
df[1,1]

df[1,1] <- 'james' # 값을 수정
df

# SQL에서 업데이트할 때 
  update df
  set name = 'james'
  where name = 'scott';
  
df[1,]
df[,3]  

df[c(1,3)]

df[,'name']
df[,c('name','r')] # SQL에서 select name, r from df;

df[,'name'] # 열을 하나 출력할 때 기본값으로 가로 방향으로 출력됨
df[,'name',drop=F] # drop = F 세로방향 출력

df[,'name'][2]
df[,'name',drop=F][2,] #여기서 그냥 [2] 하면 안돼. 위에처럼 vector모양이 아니잖아 [2,] 해줘야지

names(df)
colnames(df)
colnames(df) <- c('NAME','SQL','R') # 열이름 수정

rownames(df) # 행이름은 그냥 디폴트로 이렇게 되어있네 1, 2, 3 
rownames(df) <- c('사원1','사원2','사원3')
df

'SQL' %in% names(df)
'SQL' %in% colnames(df)

names(df)== 'SQL'
which(names(df) == 'SQL')
names(df)[which(names(df)=='SQL')]

names(df) %in% c('SQL','R')

c('SQL','PYTHON') %in% names(df)

df[,'SQL']  
df[,c('SQL','R')]  
df[,names(df) %in% c('SQL','PYTHON','R')] # 특정한 열을 추출
df[,!names(df) %in% c('SQL','PYTHON','R')] # 특정한 열 빼고 추출
df

which(names(df) == c('SQL','PYTHON','R')) # 이거랑 바로 밑에거랑 비교해봐
which(names(df) %in% c('SQL','PYTHON','R'))

which(!names(df) %in% c('SQL','PYTHON','R'))

df$PYTHON <- c(90,70,60) #새로운 컬럼을 추가
df
length(df) # data frame 에서 length는 컬럼의 수를 리턴
NROW(df) # 행의 수
nrow(df)
str(df)

df <- data.frame(x=1:100000)
df
head(df, n=10) # 앞부분의 행 추출
tail(df, n=10) # 뒷부분의 행 추출


[문제27] 아래와 같은 모양의 변수를 생성하세요. 변수 이름은 df로 하세요.

<화면출력>
  
  name sql  plsql
1  king  96     75
2 smith  82     91
3  jane  78     86

df <- data.frame('name'=c('king','smith','jane'),
                 'sql'=c(96,82,78),
                 'plsql'=c(75,91,86))
df
[문제28] df변수에 james, 90, 80 추가 해주세요.
<화면출력>
  
  
  name sql plsql
1  king  96    75
2 smith  82    91
3  jane  78    86
4 james  90    80

df[4,] <- c('james',90,80)
df[NROW(df)+1,] <- c('james',90,80) # 새로운 행 추가 이렇게 해보자

df
[문제29] james에 대한 row 정보만 출력하세요.

<화면출력>
  
  name sql plsql  
4 james  90    80 

df[which(df$name %in% 'james'),]
df[which(df$name %in% 'king'),]

[문제30] james 이름의 행을 삭제해주세요.
df<-df[which(!df$name %in% 'james'),]
df



---- # 데이터 불러오기 (SQL)
# read.csv : csv 파일을 데이터 프레임으로 읽어들이는 함수
  
employees <- read.csv("C:/data정명찬/employees.csv", header = T)

employees
#R
employees[employees$EMPLOYEE_ID == 100,]
employees[employees$EMPLOYEE_ID == 100,c('LAST_NAME','SALARY')]

[문제31] employees 변수에 있는 데이터 중에 급여가 3000 인 
사원들의 last_name, salary를 출력하세요. 
단 employees 변수에 컬럼정보를 확인하시고 수행하세요.
employees[employees$SALARY == 3000,c('LAST_NAME','SALARY')]
#which 안써도된다고 !

[문제32] 급여가 2000 이상인 사원들의 last_name, salary를 출력하세요.
employees[which(employees$SALARY >= 2000),c('LAST_NAME','SALARY')]


[문제33] job이 ST_CLERK인 사원들의 이름과 월급과 직업을  출력하세요.
employees[which(employees$JOB_ID == 'ST_CLERK'),c('LAST_NAME','SALARY','JOB_ID')]


[문제34] job이 ST_CLERK이 아닌 사원들의 이름과 월급과 직업을  출력하세요.
employees[-which(employees$JOB_ID == 'ST_CLERK'),c('LAST_NAME','SALARY','JOB_ID')]


[문제35] job이 AD_ASST, MK_MAN 인 사원들의 employee_id,last_name,job_id를 출력하세요.
employees[which(employees$JOB_ID == c('AD_ASST','MK_MAN')),c('EMPLOYEE_ID','LAST_NAME','JOB_ID')]
# 이거 워닝 뜸. 왜? == 썼으면 저렇게 하면 안돼. | 로 연결해야돼 그니까 걍 여러개면 밑에처럼.
employees[which(employees$JOB_ID %in% c('AD_ASST','MK_MAN')),c('EMPLOYEE_ID','LAST_NAME','JOB_ID')]
# 답 이거임.

[문제36] 부서번호가 20번,30번 사원들 중에 급여가 10000이상인 
사원의 last_name, salary, department_id를 출력하세요.
employees[employees$DEPARTMENT_ID %in% c(20,30) & employees$SALARY >= 10000,c('LAST_NAME','SALARY','DEPARTMENT_ID')]

# R 에서 논리연산자 & 써야지 ㅡㅡ


-----------------------------------------------------------------
# paste, paste0 : 변수의 값들을 하나로 묶는 함수
    
text1 <- '2022-01-10'
text2 <- '오늘 하루도 행복하게 살자'
text3 <- '내년에도 늘 행복하자'

paste(text1, text2, text3)
paste(text1, text2, text3, sep=' ') # sep=' ' 값을 하나로 묶을 때 공백문자를 구분자로 입력해서 묶는다. 
paste(text1, text2, text3, sep=',')
paste(text1, text2, text3, sep='') #이거랑 paste0 그냥한거랑 같겠지
paste0(text1, text2, text3)


[문제37] last_name과 job_id 값을 아래결과와 같이 출력되도록하세요. 

King의 직업은 AD_PRES입니다.

paste(employees$LAST_NAME,'의 직업은 ' ,employees$JOB_ID,'입니다', sep = '')
employees$LAST_NAME

[문제38] Grant 사원의 정보만 출력해주세요.

Grant의 직업은  SH_CLERK입니다.
employees[employees$LAST_NAME =='Grant','LAST_NAME']
employees[employees$LAST_NAME =='Grant','JOB_ID']

paste(employees[employees$LAST_NAME =='Grant','LAST_NAME'],'의 직업은 ',employees[employees$LAST_NAME =='Grant','JOB_ID'],'입니다.',sep='')


[문제39] commission_pct에  NA 인 사원들의 last_name, salary, commission_pct를 출력하세요.

employees[employees$COMMISSION_PCT == NA, c('LAST_NAME','SALARY','COMMISSION_PCT')]

employees[is.na(employees$COMMISSION_PCT), c('LAST_NAME','SALARY','COMMISSION_PCT')]


[문제40] department_id에 NA 인 사원들의 last_name, salary, department_id를 출력하세요.
employees[is.na(employees$DEPARTMENT_ID), c('LAST_NAME','SALARY','DEPARTMENT_ID')]

[문제41] commission_pct에  NA가 아닌 사원들의 last_name, salary, commission_pct를 출력하세요.
employees[!is.na(employees$COMMISSION_PCT), c('LAST_NAME','SALARY','COMMISSION_PCT')]

[문제42] 30번 부서 사원들이면서 급여는 3000이상인 사원들의 employee_id, salary, department_id를 출력하세요.
employees[employees$DEPARTMENT_ID == 30 & employees$SALARY >= 3000, c('EMPLOYEE_ID','SALARY','DEPARTMENT_ID')]
employees[employees$DEPARTMENT_ID %in% 30 & employees$SALARY >= 3000, c('EMPLOYEE_ID','SALARY','DEPARTMENT_ID')]

# NA가 나왔는데 왜지? 위에 문제40 에 Grant가 이 샐러리 조건에 해당하지만 DEPARTMENT_ID 가 NA라 여기 속할 가능성이있어서 이녀석 NA도 포함한 결과가 나와.
# 밑에 걸로 하면 NA 안나옴.

# na.omit : NA가 있는 행 자체를 삭제하는거라서 조심해야돼. 행 자체가 NA로 나왔다 그럼 삭제해도대.

[문제43] 20번부서 사원이면서 급여는 10000를 초과한 사원 또는 급여가 2500 미만의 사원들의 employee_id, salary, department_id를 출력하세요.
employees[employees$DEPARTMENT_ID == 20 & employees$SALARY > 10000 | employees$SALARY < 2500, c("EMPLOYEE_ID","SALARY","DEPARTMENT_ID")]
employees

NROW(employees)
NROW(na.omit(employees))

employees <- read.csv("C:/Users/USER/Downloads/data정명찬/employees.csv", header = T)

  
■ 문자함수
1. nchar : 문자수를 리턴하는 함수

nchar('R Developer')
nchar('R Developer', type='char')
nchar('R Developer', type='bytes')

nchar('빅 데이터', type='char')
nchar('빅 데이터', type='bytes')

x <- c('R', 'Developer')
length(x)
nchar(x)
nchar(x)[1]
nchar(x[2])

2. strsplit : 부분문자로 분리하는 함수
strsplit('R Developer', split=' ' )
strsplit('R Developer', split=' ' )[[1]]
strsplit('R Developer', split=' ' )[[1]][2]
strsplit('R,Developer', split=',' )
strsplit('R Developer', split='' ) # 분리하는 기준 없으면 한 글자씩 분리하겠다.
strsplit('R Developer', split=character(0)) # 이렇게해도 한 글자씩 분리

as.vector(strsplit('R Developer', split=' ' ))

#unlist: list 자료형을 vector 자료형으로 변환하는 함수
unlist(strsplit('R Developer', split=' ' ))
x<- strsplit('R Developer', split=' ' )

x
paste(x[[1]])
paste(x[[1]][1], x[[1]][2])
paste(x[[1]],collapse =' ')
paste(x[[1]],collapse='')
strsplit(paste(x[[1]],collapse=' '),split=' ')

3. toupper : 대문자로 변환하는 함수
toupper('r developer')

4. tolower: 소문자로 변환하는 함수
tolower('R DEVELOPER')

5.substr : 문자를 추출하는 함수
substr('R Developer',1,1)
substr('R Developer',1,5)
substr('R Developer',3,4) # 이거 SQL이랑 다르니까 잘봐야돼. 3번째부터 4번째까지로 해석

# substring 이것도 있음
substring(x,1:3,4:5) 1~4, 2~5, 3~4
substring(x,1:3,4:6) 1~4, 2~5, 3~6
substring(x,1:2,4:6) 1~4, 2~5, 1~6
substring(x,2) # -> substring으로는 거기부터 끝까지도 구할 수 있음


6.sub : 첫번째 일치하는 문자만 바꾸는 함수
sub('R', 'Python', 'R Programmer R Developer')

7.gsub : 일치하는 모든 문자를 바꾸는 함수
gsub('R', 'Python', 'R Programmer R Developer')

[문제44] x변수의 값중에 제일 뒤에 두글자만 추출해주세요.
x <- 'developer'
substr(x,nchar(x)-1,nchar(x))



[문제45] last_name의 글자의 수가 10이상인 사원의 employee_id, last_name 출력하세요.
employees[nchar(employees$LAST_NAME) >= 10, c("EMPLOYEE_ID","LAST_NAME")]


[문제46] last_name, last_name의 첫번째 철자부터 세번째 철자까지 함께 출력하세요.
paste(employees[,'LAST_NAME'], substr(employees[,'LAST_NAME'],1,3))
paste(employees$LAST_NAME,substr(employees$LAST_NAME,1,3))

[문제47] developer 글자를 첫글자 대문자, 뒷글자는 소문자로 변환하세요.
x <- 'developer'
toupper(substr(x, 1,1))
gsub(substr(x, 1,1),toupper(substr(x, 1,1)),'developer')
gsub(substr(x, 9,9),toupper(substr(x, 9,9)),'developer')

답
paste0(toupper(substr(x,1,1)),tolower(substring(x,2)))

library(tools)
tools::toTitleCase(x) # 이걸 사용할 떈 꼭 이렇게 주석 처리 해놔야해
                      # 첫글자 대문자 뒷글자 소문자로 변환하는 함수
toTitleCase(x)

[문제48] last_name, salary값을 화면에 출력할때 0은 * 로 출력하세요.
gsub(0, '*', employees[, c('LAST_NAME','SALARY')])

답
paste(employees$LAST_NAME, gsub(0, '*', employees$SALARY))

#테이블 모양으로 하고 싶으면
data.frame(name = employees$LAST_NAME,
           sal = gsub(0, '*', employees$SALARY))

[문제49] last_name의 두번째 철자가 m 또는 b 인 사원들의 last_name, salary를 출력하세요.
employees[substr(employees$LAST_NAME,2,2) %in% c('m','b'),c('LAST_NAME','SALARY')]


[문제50] last_name의 제일 뒷글자만 대문자 앞글자들은 소문자로 출력하세요.

paste0(tolower(substr(employees$LAST_NAME,1,nchar(employees$LAST_NAME)-1)),
       toupper(substr(employees$LAST_NAME,nchar(employees$LAST_NAME),nchar(employees$LAST_NAME))))


■ 숫자함수
1. round : 숫자를 지정한 자릿수 기준으로 반올림

round(45.926)
round(45.926,2)
round(45.926,-1)
round(45.926,0)

2. signif
signif(45.926,4)

3. ceiling : 무조건 큰 정수로! 올림
ceiling(45.0000001)

4. trunc : 소수점은 절삭, SQL은 자릿수 입력해서 절삭 되는데 R은 소수점 다 절삭
trunc(45.926)

5. floor : x보다 작은 수 중 가장 큰 정수를 나타내는 함수. 버림 (ceiling 반대)
floor(45.926)
floor(-45.926)

6.제곱근
sqrt(16)

7.절대값
abs(-1)

8. factorial
factorial(3)

■ 날짜함수
1. 현재날짜, 시간
Sys.Date()
Sys.time()
date()

2. as.Date() : 문자 날짜를 날짜형으로 변환하는 함수
class('2022-01-01')

class(as.Date('2022-01-01'))
class(as.Date('2022/01/01'))

as.Date('20200101',format='%Y%m%d')

#format : 날짜모델요소
%Y : 년도4자리(세기포함)
%y : 년도2자리(세기 미포함)
%m : 숫자달
%B : 문자달
%b : 문자달의 약어
%d : 일
%A : 요일
%a : 요일 약어
%u : 요일을 숫자로 1~7, 월요일 1
%w : 요일을 숫자로 0~6, 일요일 0
%H : 시
%M : 분
%S : 초
%Z : timezone 이름
%z : timezone 시간

as.Date('2022년 1월 11일',format='%Y년 %m월 %d일')
as.Date('2022년 1월 11일',format='%Y년 %B %d일')


as.Date('2022년 JANUARY 11일',format='%Y년 %B %d일')

Sys.getlocale()
Sys.setlocale("LC_ALL","English")

as.Date('2022년 JANUARY 11일',format='%Y년 %B %d일')
as.Date('2022년 1월 11일', format='%Y년 %B %d일')
as.Date('2022년 1 11일', format='%Y년 %B %d일')

Sys.getlocale()
Sys.setlocale() # 기본값으로 돌아감

as.Date('2022년 1월 11일', format='%Y년 %B %d일')

3. format 함수 : 날짜를 문자형으로 변환하는 함수


Sys.Date()
format(Sys.Date(),'%Y%m%d')
class(format(Sys.Date(),'%Y%m%d'))
format(Sys.Date(), '%B')
 #위에 날짜모델 요소 다 해보기!

4. weekdays: 요일을 출력하는 함수
format(Sys.Date(), '%A')
weekdays(Sys.Date())

5. 날짜계산
Sys.Date() + 129
Sys.Date() - 30

as.Date('2022-01-11') + 129 #format = 안써도 디폴트로 들어감

Sys.Date() - as.Date('2021-12-16') 
as.numeric(Sys.Date() - as.Date('2021-12-16'))


7. difftime 두 날짜 간의 일수를 리턴하는 함수
difftime(Sys.Date(), as.Date('2021-12-16'))


8.as.difftime() : 시간으로 형을 변환하는 함수, 시간의 차이를 나타내는 함수

as.difftime('18:30:00') - as.difftime('09:30:00')


employees <- read.csv("C:/Users/USER/Downloads/data정명찬/employees.csv", header = T)

[문제51]2002-06-07에 입사한 사원들의 last_name, hire_date를  출력하세요.
employees[as.Date(employees$HIRE_DATE,format= '%Y-%m-%d')==as.Date('2002-06-07'),c('LAST_NAME','HIRE_DATE')]

답
employees$HIRE_DATE <- as.Date(employees$HIRE_DATE,format= '%Y-%m-%d')
employees[employees$HIRE_DATE==as.Date('2002-06-07'),c('LAST_NAME','HIRE_DATE')]

[문제52]사원의 last_name, 근무일수를 출력하세요.
as.integer(Sys.Date()-employees$HIRE_DATE)

data.frame(name=employees$LAST_NAME,
           working_days=as.integer(Sys.Date()-employees$HIRE_DATE))

[문제53]사원의 last_name, 입사한 요일을 출력하세요.
data.frame(name=employees$LAST_NAME,
           day_1 = weekdays(employees$HIRE_DATE),
           day_2 = format(employees$HIRE_DATE,'%A')) #다시하기

[문제54]근무연수가 15년 이상인 사원들의 last_name, hire_date, 근무연수를 출력해주세요.

years <- as.integer(Sys.Date() - employees$HIRE_DATE)/365
x<-employees[years >= 15,c('LAST_NAME','HIRE_DATE')]
working_years <- as.integer((Sys.Date() - employees$HIRE_DATE)/365)
#다시풀기
data.frame(name = employees$LAST_NAME
           hire_date = employees$HIRE_DATE
           working_year )
library(lubridate)

install.packages("lubridate")
  
library(lubridate)

library()

Sys.Date()
Sys.time()

lubridate::

lubridate::now()
today()
now()  

#lubridate 쓰면 값을 숫자로 바꾸는 과정 안겪어도 된다

#날짜 -> 문자형 으로 추출
format(Sys.Date(),'%Y')

#날짜 -> 수치형으로 추출(numeric)
lubridate::year(Sys.Date())
class(lubridate::year(Sys.Date()))

lubridate::year(lubridate::today())
class(lubridate::year(lubridate::today()))

lubridate::year(Sys.time())

# 달 추출 문자형으로
format(Sys.Date(),'%m')
class(format(Sys.Date(),'%m'))

# 달 추출 수치형으로 (numeric)
lubridate::month(Sys.Date())
class(lubridate::month(Sys.Date()))

# 일 추출 문자형으로
format(Sys.Date(),'%d')

# 일 추출 숫자로
lubridate::day(Sys.Date())

# 요일 추출 문자인 숫자로
format(Sys.Date(),'%A')
format(Sys.Date(),'%a')
format(Sys.Date(),'%u')
format(Sys.Date(),'%w')

# 요일 추출 숫자로 추출
lubridate::wday(Sys.Date(),week_start = 1) #1~7 월요일기준
lubridate::wday(Sys.Date(),week_start = 7) #1~7 일요일기준
lubridate::wday(Sys.Date()-2,week_start = 7)

lubridate::wday(Sys.Date(),week_start = 1, label = T) # label = T 하면 factor형이 된다. 
lubridate::wday(Sys.Date(),week_start = 7, label = F) # 기본값, 숫자형으로 뽑는거. label = F


as.vector(lubridate::wday(Sys.Date(),week_start = 1, label = T))

Sys.Date() +365 #이렇게 1년 더할 때 1년을 일수로 환산해서 할 수 밖에 없어

# lubridate에서는 편하게 가능

Sys.Date() + lubridate::years(10)

Sys.Date() - lubridate::years(10)

lubridate::now() + lubridate::years(10)

?months
#base::months 달의 수를 더할 때 사용
Sys.Date() + base::months(5)
Sys.Date() + base::months(-5)

Sys.Date() +lubridate::years(10) + base::months(2)

# SQL : select sysdate + to_yminterval('10-02') from dual;

# lubridate::days() 일수를 더하거나 빼는 함수
Sys.Date() + 100

Sys.Date() + lubridate::days(100)

# lubridate::hours() 시간을 더하거나 빼는 함수
Sys.time() + lubridate::hours(10)

# lubridate::minutes() 분을 더하거나 빼는 함수
Sys.time() + lubridate::minutes(10)

# lubridate::seconds() 초를 더하거나 빼는 함수
Sys.time() + lubridate::seconds(10)

Sys.time() + days(100) + hours(50) + minutes(30) + seconds(20)

# SQL : select localtimestamp + to_dsinterval('100 10:30:50') from dual;


Sys.Date() + lubridate::hms('02:30:50')


x<- lubridate::now()

# 이런식으로 시간 데이터 있는 거에 변화를 줄 수 있어!!!!!!!!!!!!!!!!!!

x<- lubridate::now()
lubridate::year(x) <- 2000
lubridate::month(x) <- 2
lubridate::day(x) <- 1
lubridate::hour(x) <- 12
lubridate::minute(x) <- 0
lubridate::second(x) <- 0

x + 100
x
x + days(100)

#분기
lubridate::quarter(lubridate::now())
lubridate::quarter(lubridate::now())
lubridate::quarter(Sys.Date() +200)

# 분기 base::quarters
base::quarters(Sys.Date())
base::quarters(Sys.Date()+200)


[문제55] 아래화면과 같이 날짜, 시간 정보를 출력해주세요
"2022년 1월 12일 09시 36분 55초"

format(Sys.time(),'%Y년 %m월 %d일 %H시 %M분 %S초')

[문제56] 홀수달에 입사한 사원들중에 짝수일에 입사한 사원들의 정보를 출력해주세요.
as.integer(format(employees$HIRE_DATE,'%m'))%%2 == 1 & 
employees[lubridate::month(employees$HIRE_DATE)%%2 == 1 & lubridate::day(employees$HIRE_DATE)%%2 ==0,]

[문제57] 2005년도에 짝수달에 입사한 사원들 중에 월요일에 입사한 정보를 출력해주세요.
employees[lubridate::year(employees$HIRE_DATE)==2005&lubridate::month(employees$HIRE_DATE)%%2 == 0 & lubridate::wday(employees$HIRE_DATE,week_start = 1,label=T)=='월',]


[문제58] 1분기에 입사한 사원들중에 수요일에 입사한 사원들의 정보를 출력해주세요.

employees[lubridate::quarter(employees$HIRE_DATE) == 1 & lubridate::wday(employees$HIRE_DATE,week_start=1,label=T)=='수',]


■ 중복제거
unique(employees$JOB_ID)
unique(employees$DEPARTMENT_ID)
na.omit(unique(employees$DEPARTMENT_ID))

as.integer(na.omit(unique(employees$DEPARTMENT_ID)))


■ 정렬 sort

x<- c(6,9,2,3,5,4,7,1,8)
sort(x)
sort(x,decreasing=F) #오름차순, 기본값

x<-c(6,9,2,3,5,NA,4,7,1,8)
sort(x) #NA 있을 때 sort하면 NA 출력안함, 기본값
sort(x,decreasing =F, na.last = T) # 마지막에 NA출력
sort(x,decreasing =F, na.last = F) # 앞에 NA출력

■ rev : 역순출력

x <- c(6,9,2,3,5,4,7,1,8)
rev(x)
x[length(x):1]
rev(na.omit(x))


■ order : 정렬의 인덱스번호를 반환하는 함수
x<- c(60,90,20,30,50,40,70,10,80)
sort(x)
order(x)
x[order(x)]

order(x, decreasing=T)

x<- c(60,90,20,30,50,NA,40,70,NA,10,80)
order(x,decreasing=T) #order는 기본적으로 NA에 인덱스 부여함

order(x,decreasing=T,na.last=T)
order(x,decreasing=T,na.last=F)


[문제59] 사원들의 LAST_NAME, SALARY를 출력해주세요.
단  SALARY를 기준으로  내림차순으로 정렬해주세요.

employees[order(employees$SALARY,decreasing=T),c('LAST_NAME','SALARY')]


■ doBy : 데이터 프레임에서 정렬

install.packages("doBy")

library(doBy)

?orderBy
orderBy(~SALARY,employees[,c('LAST_NAME','SALARY')]) #대산 SQL이랑 달리 결과 셋 집합외에 DEPARTMENT_ID 이런건 안된다고.
orderBy(~-SALARY,employees[,c('LAST_NAME','SALARY')]) # -붙이면 내림차순 됨
  
orderBy(~DEPARTMENT_ID+SALARY,employees[,c('LAST_NAME','SALARY','DEPARTMENT_ID')]) # 이렇게 두 개 합치는거 잘봐 + 앞에꺼에 뭘쓰냐에 따라 달라지잖아
orderBy(~DEPARTMENT_ID-SALARY,employees[,c('LAST_NAME','SALARY','DEPARTMENT_ID')]) # Salary는 내림, department_id는 오름으로 하고싶으면 이렇게

[문제60] last_name, hire_date를  출력하는데 먼저 입사한 사원부터 출력하세요.
orderBy(~HIRE_DATE, employees[,c("LAST_NAME","HIRE_DATE")])


[문제61] 아래화면과 같이 사원들의 정보를 출력해주세요.  # 이거 꼭 볼 때마다 다시해보기

사번              이름     입사일 입사요일
104       Ernst Bruce 2007-05-21       월
123    Vollman Shanta 2005-10-10       월
133      Mallin Jason 2004-06-14       월
137     Ladwig Renske 2003-07-14       월
...

employees$EMPLOYEE_ID
paste(employees$LAST_NAME,employees$FIRST_NAME)
employees$HIRE_DATE
format(employees$HIRE_DATE,'%a')
format(employees$HIRE_DATE,'%u')

df<- data.frame( 사번=employees$EMPLOYEE_ID,
             이름=paste(employees$LAST_NAME,employees$FIRST_NAME),
             입사일=employees$HIRE_DATE,
             입사요일=format(employees$HIRE_DATE,'%a'),
             입사요일1=format(employees$HIRE_DATE,'%u')) #이렇게 순서지정때문에 요걸 추가해야대는데
df
orderBy(~입사요일1,df)[,-5]


df<- data.frame( 사번=employees$EMPLOYEE_ID,
                이름=paste(employees$LAST_NAME,employees$FIRST_NAME),
                입사일=employees$HIRE_DATE,
                입사요일=lubridate::wday(employees$HIRE_DATE,week_start = 1,label=T)) #이렇게 하면 lubridate::wday는 factor로 월~일 이 자동으로 순서가 생기잖아

orderBy(~입사요일,df)

[문제62] 30번 부서 사원들의 last_name, salary를  출력하세요.
단 salary를 기준으로 내림차순정렬하세요.

orderBy(~-SALARY,employees[employees$DEPARTMENT_ID==30,c("LAST_NAME","SALARY")])

x<-employees[employees$DEPARTMENT_ID==30,c("LAST_NAME","SALARY")]
x[order(x$SALARY,decreasing=T),]

#order로 푸는거 64번처럼 해봐

[문제63] job_id가  ST_CLERK 가 아닌 사원들의 last_name, salary, job_id를 출력하는데 급여가 높은 사원부터 출력되게하세요.
orderBy(~-SALARY,employees[employees$JOB_ID != 'ST_CLERK', c("LAST_NAME","SALARY","JOB_ID")])
    

[문제64] 사원 last_name, salary, commission_pct를 출력하는데 commission_pct를 기준으로 오름차순정렬하세요.
orderBy(~COMMISSION_PCT,employees[,c("LAST_NAME","SALARY","COMMISSION_PCT")])

employees[order(employees$COMMISSION_PCT,na.last=F),c("LAST_NAME","SALARY","COMMISSION_PCT")]

#NULL값 맨앞에 어떻게해?

#이거 order로 다시 풀어봐

[문제65] commission_pct를 받고 있는 사원들의 last_name, salary, commission_pct를 출력하는데 commission_pct를 기준으로 오름차순정렬하세요.

orderBy(~COMMISSION_PCT,employees[!is.na(employees$COMMISSION_PCT),c("LAST_NAME","SALARY","COMMISSION_PCT")])



■ 그룹함수
x<-c(70,80,90,100)
sum(x) 
mean(x)
var(x)
sd(x)
max(x)
mean(x)
length(x)
nrow(x)
ncol(x)
NROW(x)

x<-c(70,80,90,100,NA)
sum(x)
mean(x)
sum(na.omit(x))
sum(x,na.rm=T)
mean(x,na.rm=T)

length(x) #NA 포함
NROW(x) #NA포함
length(na.omit(x))
NROW(na.omit(x))

[문제66] 직업이 ST_CLERK 인 사원들중에 최대월급을 출력하세요.
max(employees[employees$JOB_ID=='ST_CLERK','SALARY'])

[문제67] 최소 급여를 받는 사원들의 정보를 출력해주세요.
employees[employees$SALARY %in% min(employees$SALARY),]





■ aggregate # SQL의 group by 역할

데이터를 분할하고 각 그룹으로 묶은 후 그룹함수를 적용하는 함수

aggregate(SALARY ~ DEPARTMENT_ID,employees,sum)
aggregate(SALARY ~ JOB_ID,employees,mean)


[문제68] JOB_ID별 인원수를 출력해주세요.
aggregate(EMPLOYEE_ID~JOB_ID,employees,length)
aggregate(EMPLOYEE_ID~JOB_ID,employees,NROW)


[문제69] DEPARTMENT_ID별 평균급여를 구한후 평균급여가 8000이상인 정보만 출력해주세요.
x<-aggregate(SALARY~DEPARTMENT_ID,employees,mean)
x[x$SALARY >= 8000,]
orderBy(~DEPARTMENT_ID,x[x$SALARY >= 8000,])

[문제70] 년도별 총액급여를 구하세요.
x<-aggregate(SALARY~lubridate::year(employees$HIRE_DATE),employees,sum)
class(x)
names(x)<- c('년도','총액')
x

[문제71] 요일별 총액급여를 구하세요.
x<-aggregate(SALARY~lubridate::wday(employees$HIRE_DATE,week_start = 1,label=T),employees,sum)

names(x)<-c('요일','총액')
x

format으로 했을경우 
factor(x$요일,levels=c(1,2,3,4,5,6,7),labels=c('월','화','수','목','금','토','일'))



df<-data.frame(id=100:104,
           weight = c(60,90,75,95,65),
           size = c('small','large','medium','large','small'))
df
df$size <- factor(df$size,levels=c('small','medium','large'))
df

df$size<-factor(df$size,levels=c('small','medium','large'),labels=c('작다','중간','크다'))
df  



■apply
- 함수를 반복수행
- 행렬,배열, 데이터프레임에 함수를 적용한 결과 벡터, 리스트, 배열 형태로 리턴하는 함수

m <- matrix(1:4,ncol=2)
m
sum(m[1,])
sum(m[2,])
sum(m[,1])
sum(m[,2])

apply(m,MARGIN=1,sum) # MARGIN = 1 / 행 방향
apply(m,MARGIN=2,sum) # MARGIN = 2 / 열 방향

df<-data.frame(name=c('king','smith','scott'),
           sql=c(90,NA,70),
           r=c(80,70,NA))
df            
sum(df$sql,na.rm=T)
sum(df$r,na.rm=T)  

apply(df[,c('sql','r')],MARGIN=2, sum, na.rm=T)  # 열의 합
  
apply(df[,c('sql','r')],MARGIN=1, sum, na.rm=T) # 행의 합 
df  


rowSums(df[,c('sql','r')])
rowSums(df[,c('sql','r')],na.rm=T)
colSums(df[,c('sql','r')],na.rm=T)


■ lapply
- 벡터,리스트, 데이터프레임에 함수를 적용하고 그 결과를 리스트로 반환

x<-list(a=1:3, b=4:10, c=11:21)
x
length(x)
length(x$a)
length(x$b)
length(x$c)

lapply(x,length)

sum(x$a)
sum(x$b)
sum(x$c)

lapply(x,sum)
lapply(x,mean)

df<-data.frame(name=c('king','smith','scott'),
               sql=c(90,80,NA),
               r=c(80,70,NA))
df

apply(df[,c(2,3)],MARGIN=2,sum,na.rm=T)
apply(df[,c(2,3)],2,sum,na.rm=T)

lapply(df[,c(2,3)],sum,na.rm=T)


■ sapply
-벡터,리스트,데이터프레임에 함수를 적용하고 그 결과를 벡터로 반환하는 함수 # lapply - list로, sapply 벡터로

x<-list(a=1:3, b=4:10, c=11:21)
x

lapply(x,length)
unlist(lapply(x,length))

sapply(x,length)

sapply(df[,c(2,3)],sum,na.rm=T)


■ mapply
- 다수의 인수값을 입력하여 함수를 반복 수행하는 함수


rep(1,5)
rep(2,4)
rep(3,3)
rep(4,2)
rep(5,1)

mapply(rep,1:5,5:1)

■ tapply
- 벡터, 데이터프레임에 저장된 데이터를 주어진 기준에 따라 그룹을 묶은 뒤, 
  그룹함수를 적용하고 그결과를 array형식(가로)으로 리턴하는 함수

employees <- read.csv("C:/Users/USER/Downloads/dataJMC/employees.csv", header = T)

aggregate(SALARY ~ DEPARTMENT_ID, employees, sum)
# 이렇게 보기쉽게!
a<-tapply(employees$SALARY,employees$DEPARTMENT_ID,sum)
class(a)

aggregate(SALARY ~ DEPARTMENT_ID+JOB_ID, employees, sum)
tapply(employees$SALARY,list(employees$DEPARTMENT_ID,employees$JOB_ID),sum)

tapply(employees$SALARY,list(employees$DEPARTMENT_ID,employees$JOB_ID),sum,default=0) # default=0 NA값을 다른값으로!




[문제72] 년도별 총액급여를 구하세요.(가로방향으로 출력)

aggregate(SALARY ~ lubridate::year(HIRE_DATE),employees,sum)

답
tapply(employees$SALARY,lubridate::year(employees$HIRE_DATE),sum)

[문제73] 요일별 총액급여를 구하세요.(가로방향으로 출력)
aggregate(SALARY ~ lubridate::wday(HIRE_DATE,week_start = 1,label=T),employees,sum)

답
tapply(employees$SALARY,lubridate::wday(employees$HIRE_DATE,week_start = 1,label=T),sum)

[문제74] 부서별,년도별 총액급여를 출력해주세요.
aggregate(SALARY ~ DEPARTMENT_ID+lubridate::year(HIRE_DATE),employees,sum)


library(doBy)
orderBy(~DEPARTMENT_ID+lubridate::year(HIRE_DATE),aggregate(SALARY ~ DEPARTMENT_ID+lubridate::year(HIRE_DATE),employees,sum))

# tapply로 다시

[문제75] 년도별, 분기별 총액급여, 행의 합, 열의 합을 출력해주세요. #제발다시풀기

x<- tapply(employees$SALARY,list(lubridate::year(employees$HIRE_DATE),lubridate::quarter(employees$HIRE_DATE)),sum,default=0)
x
class(x)
x<- data.frame(x)
x
names(x) <- c('1분기','2분기','3분기','4분기')          
x
x$합 <- apply(x,1,sum)
x<- rbind(x,apply(x,2,sum))    
      x

rownames(x)[nrow(x)] <- '합'      
x



■ 조건제어문
-조건의 흐름을 제어

1. if문

if(조건){
  조건에 참일때 수행
}

if(조건){
  조건에 참일 때 수행
  
 else{
   조건에 거짓일 때 수행
   
   
if(TRUE){
  print('참')
}
if(FALSE{ 
  print('참')
  else(
    print
  )
}

x <- 100
y <- 200  
if(x==y){
  print('x와 y가 같다')
}  else {
  print('x와 y가 같지 않다')
  }

#이렇게 안에 더 넣을수도있어

if(x==y){
  print('x와 y가 같다')
}  else {
  if(x>y){
    print('x가 y보다 크다')
  }else{
    print
  }
  
  print('x와 y가 같지 않다')
}
   
if(x==y){
  print('x와 y가 같다')
} else if(x>y){
   print('x가 y보다 크다')
} else {
  print('y가 x보다 크다')
}
}
   
  
[문제76]변수에 2를 입력한후 그 변수에 값이 2의 배수면 "2의 배수" 출력	아니면 "2의 배수가 아니다" 출력해주세요.
x<-2

if(x%%2==0){
  print('2의 배수')
} else{
  print('2의 배수가 아니다')
}

2.ifelse 함수
ifelse(조건,참,거짓)
ifelse(조건,참,ifelse(조건,참,ifelse(조검,참,거짓)))

x<-1
y<-2
ifelse(x==y,'같다',ifelse(x>y,'x가크다','y가크다'))

[문제77] x 변수에 1부터 100까지 입력한 후 짝수값은 자신의 값에 10을 곱한 값으로 수정하세요.
x<-c(1:100)
x

if(x[1]%%2==0){
  print(x[1]*10)
}
이렇게 하나씩 하는 수밖에 없어. 반복문 이용해야돼. 그래서 ifelse를 할 수 밖에없는거야 if문은 함수가 아니니까.


ifelse(x%%2==0,x*10,x)

[문제78]  x <- c(2,10,6,4,3,NA,7,9,1) x 변수에 NA가 있으면 0으로 설정하세요


ifelse(is.na(x),0,x)

[문제79] last_name, salary, commission_pct, commission_pct NA 면 salary * 12,
아니면 (salary * 12) + (salary * 12 * commission_pct)을 수행하세요.

if(is.na(employees$COMMISSION_PCT)==T){
  employees$SALARY*12
} else {
  employees$SALARY*12 + employees$SALARY*12*employees$COMMISSION_PCT
}

a<-ifelse(is.na(employees$COMMISSION_PCT),employees$SALARY*12,(employees$SALARY * 12) + (employees$SALARY * 12 * employees$COMMISSION_PCT))

df <- data.frame(name=employees$LAST_NAME,
           sal =employees$SALARY,
           com =employees$COMMISSION_PCT,
           ann_sal=a)
df[order(df$ann_sal,decreasing=T),]

orderBy(~-ann_sal,df)

[문제80] last_name, salary, 급여가 10000  이상이면 A, 5000이상 10000보다 작으면 B,
나머지는 C가 입력되어 있는 새로운 컬럼을 생성하세요.  
컬럼이름은 name, sal, level 로 설정하세요.

b<-ifelse(employees$SALARY >= 10000,'A',
       ifelse(employees$SALARY >=5000,'B','c'))

df <- data.frame(name=employees$LAST_NAME,
                 sal =employees$SALARY,
                 level=b)
df            

orderBy(~level-sal,df)


3. switch
- 변수값에 따라 조건에 맞는 실행문을 수행하는 함수

x<-2
switch(x,'남은 기간 최선을 다하자','행복하자','건강하게 살자')
switch(1,'남은 기간 최선을 다하자','행복하자','건강하게 살자')
switch(2,'남은 기간 최선을 다하자','행복하자','건강하게 살자')


x<-'바다'
switch(x,'산'= '한라산 가고 싶다',
       '바다'= '함덕해수욕장 가고 싶다',
       paste0(x,'그냥 방콕하고 싶다'))

if(x=='산'){
  print('한라산 가고 싶다')
} else if(x=='바다'){
  print('함덕해수욕장 가고 싶다')
} else{
  print('방콕하자')
}

ifelse(x=='산','한라산 가고싶다',ifelse(x=='바다','함덕해수욕장 가고싶다','공부하자'))

■ 반복문

1.for문

for(카운터변수 in 반복수행할 데이터 변수){
  반복수행할 문장
}


x<-1:100

for(i in x){
  print(i)
}

for(x in 1:100){
  print('오늘 하루도 행복하자')
}

x<-c('바다','강','계곡','산')
for(i in x){
  print(i)
}

x<-c(-1,1,2,3)

for(i in x){
  if(i<0){
    print('음수')
  }else{
    print('양수')
  }
}

[문제81] 1부터 10까지 합을 for문을 이용해서 구하세요.
x<-1:10

hap <-0
hap
hap<- hap+1
hap
hap <- hap+2


hap<-0


for(i in x){
  hap <- hap+i
}
hap

[문제82] 1부터100까지 전체합, 짝수합, 홀수합을 출력해주세요.
x<-1:100
hap<-0
for(i in x){
  hap <- hap+i
}
hap

ehap<-0

for(i in x){
  ehap<-ehap+i*2
}

ehap

ohap<-0

for(i in x){
  ohap<-ohap+i*2-1
}

ohap

#이거 이렇게 따로하는게아니다. 한번에

if(i%%2==0)
  
[문제83] 1부터100까지 홀수만 x변수에 입력해주세요.단 for문을 이용하세요. #append로 해도된다.
seq(1,100,2)

x<-NULL
for(i in 1:100){
  if(i%%2!=0){
    x<-c(x,i)
  }
}
x



[문제84] 1부터 10까지 까지 출력하세요. 단 3,5는 제외하세요.
b<-1:10
for(i in b){
  if(i != 3 & i !=5){
    print(i)
  }
}
b


#next 함수: 해당되면 아무것도 하지 않고 넘어감. 다음거 수행
for(i in b){
  if(i ==3|i==5){
    next
  }else{
    print(i)
  }
}


#break 함수 : 반복문 종료
for(i in b){
  if(i ==3|i==5){
    break
  }else{
    print(i)
  }
}


[문제85]2단 출력하기

for(i in 1:9){
  print(paste(2, 'x', i, '=', i*2))
}

for(i in 1:9){
  cat('2 x ', i, ' = ', i*2,'\n') # \n 개행문자, 다음줄 역할
}


2*1:9
print(paste('2 * ',1:9,'=', 2*1:9))

cat('2 * ',1:9,'=', 2*1:9)

[문제86]2단~9단 출력하기

for(j in 2:9){
  for(i in 1:9){
    print(paste(j, 'x', i, '=', i*j))
  }
}


# cat, \n 써서 풀기 !

for(j in 2:9){
  for(i in 1:9){
    cat(j, ' x ', i, ' = ', j*i,'\n')
  }
}


}

[문제87] 구구단(2~9)을 화면과 같이 출력해주세요.

2 * 1 = 2 	3 * 1 = 3 	4 * 1 = 4 	5 * 1 = 5 	6 * 1 = 6 	7 * 1 = 7 	8 * 1 = 8 	9 * 1 = 9 	
2 * 2 = 4 	3 * 2 = 6 	4 * 2 = 8 	5 * 2 = 10 	6 * 2 = 12 	7 * 2 = 14 	8 * 2 = 16 	9 * 2 = 18 	
...


for(j in 2:9){
  for(i in 1:9){
    cat(j, ' x ', i, ' = ', j*i,'\t')
  }
  cat('\n')


for(i in 1:9){
  for(j in 2:9){
    cat(j, ' x ', i, ' = ', i*j,'\t')
  }
  cat('\n')
}
  
2. while문
- 조건이 TRUE인 동안 반복수행하고 조건이 FALSE이면 반복문을 종료하는 반복문

while(조건){
  반복수행할 문장
}

i <- 1

while(i<=10){
  print(i)
  i<-i+1
}


[문제88] while문을 이용해서 2단을 출력해주세요.

i<-1

while(i<=9){
  cat('2 x',i,'=',i*2,'\n')
  i<-i+1
}

[문제89] while문을 이용해서 구구단(2~9)을 출력해주세요.
i<-2
while(i<=9){
  j<-1
  while(j<=9){
  cat(i, 'x',j,'=',j*i,'\n')
  j<-j+1
 }
  i<-i+1
}

3. repeat
조건이 없는 상태에서 반복

repeat{
  반복수행할 문장
  break
}

i<-1

repeat{
  print(i)
  if(i==10){
    break
  }
  i<-i+1
}

[문제91] repeat문을 이용해서 2단을 출력해주세요.
i<-1
repeat{
  cat('2 x',i,'=',i*2,'\n')
  if(i==9){
    break
  }
  i<-i+1
}

[문제92] repeat문을 이용해서 구구단(2~9)을 출력해주세요.
i<-1
repeat{
  cat('2 x',i,'=',i*2,'\n')
  if(i==9){
    break
  }
  i<-i+1
}
[문제93] repeat문을 이용해서 구구단(2~9)을 화면과 같이 출력해주세요.

2 * 1 = 2 	3 * 1 = 3 	4 * 1 = 4 	5 * 1 = 5 	6 * 1 = 6 	7 * 1 = 7 	8 * 1 = 8 	9 * 1 = 9 	
2 * 2 = 4 	3 * 2 = 6 	4 * 2 = 8 	5 * 2 = 10 	6 * 2 = 12 	7 * 2 = 14 	8 * 2 = 16 	9 * 2 = 18 	
...


-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
  
  
  
■ 함수(function)
-반복되어 사용하는 기능을 정의하는 프로그램
-기능의 프로그램
toupper('king')

함수이름 <- function(){
  함수 내에서 수행해야 할 코드
  return(반환값) #선택
}

Sys.Date()
format(Sys.Date(),'%Y%m%d')

date1 <- function(){
  return(format(Sys.Date(),'%Y%m%d'))
}

date1()

#매개변수(parameter variable)
- 형식매개변수 : arg1,arg2, 입력변수
- 실제매개변수 : 'king', x


hap <- function(arg1, arg2){
  res <- arg1 + arg2
  return(res)
}

hap(100,200)

[문제96]
hap 함수에 숫자를 입력하게 되면 1부터 입력숫자까지 누적합을 구하는 함수를 구현해주세요.

hap(10)

hap <- function(arg1){
  res<-0
  for(i in 1:arg1){
    res <- res + i
  }
  return(res)
}

hap(10)

[문제 97]
odd 함수에 숫자를 입력하게 되면 1부터 입력숫자까지 홀수의 합을 구하세요.

odd<-function(arg1){
  if(arg1<=0){
    NULL
  }else{
  res<-0
  for(i in 1:arg1){
    if (i%%2 != 0){
    res<-res+i
    }
  }
  return(res)
}
}
  
odd(4)
odd(4)
odd(-10)



[문제98]
약수를 리턴하는 divisor함수를 생성해주세요.

divisor<-function(arg1){
  res<-NULL
  for(i in 1:arg1){
    if(arg1%%i == 0){
     res<-c(res,i)
    }
  }
  return(res)
}

divisor(12)
divisor(258)

[문제99]
입력값으로 들어온 수에 대한 합을 구하는 hap 함수를 생성하세요.
sum(1,2,3,4,5)
sum(c(1,2,3,4,5))
sum(1:5)

hap(1,2,3,4,5)

hap <- function(...){
  v_sum <-0
  for(i in c(...)){
    v_sum <- v_sum + i
  }
  return(v_sum)
}


hap(1,2,3)


[문제100]
평균을 구하는 avg함수를 생성해주세요.
y <- c(1,2,3,NA,4,5,NA)
mean(y)
mean(y,na.rm=T)
avg(y)

avg<-function(...){
  x<- na.omit(c(...))
  v_sum <-0
  v_cn<-0
  for(i in x){
    v_sum<- v_sum + i
    v_cn<-v_cn +1
  }
  return(v_sum/v_cn)
}

avg(1:10)

[문제103]
분산을구하는 함수 variance함수 생성하세요.

1)합
2)평균
3)편차


----------------------
  # 이렇게 따로 하나씩 해서 구하는법
  
x <- na.omit(c(1,2,3,4,5,NA))
x

v_cnt<-0
v_sum<-0
for(i in x){
  v_sum <- v_sum + i
  v_cnt <- v_cnt + 1
}

v_sum
v_cnt

v_avg<-v_sum / v_cnt
v_avg

sum((x-v_avg)**2))/(v_cnt-1)



v_hap <-0
for(i in x){
  v_hap <- v_hap + ((i-v_avg)**2)
}

v_hap/(v_cnt-1)

# 한번에 함수로 처리하기

variance <- function(...){
  x<-na.omit(c(...))
  v_cnt<-0
  v_sum<-0
  for(i in x){
    v_sum <- v_sum + i
    v_cnt <- v_cnt + 1
  }
  v_avg <- v_sum/v_cnt
  v_hap <-0
  for(i in x){
    v_hap <- v_hap + ((i-v_avg)**2)
  }
  return(v_hap/(v_cnt-1))
}

sqrt(variance(c(1,2,3,4,5,NA)))


[문제104]사원 번호를 입력 값으로 받아서 사원의 LAST_NAME, SALARY를 출력하는 
find 함수를 생성하세요.

find(100)
LAST_NAME SALARY
King  24000

find(300)
"사원이 존재하지 않습니다."


'employees' %in% ls()


find <- function(arg){
  if(arg==100){
    #NULL
    return()
    }else{
    if(!'employees' %in% ls()){
    employees <- read.csv("C:/Users/USER/Downloads/data정명찬/employees.csv", header = T)
    }
    df<- employees[employees$EMPLOYEE_ID == arg,c('LAST_NAME','SALARY')]

    if(nrow(df)==1){
      print(df)
    }else{
      print('사원이 존재하지 않습니다')
    }
  }
}

find(100)

find <- function(arg){
  if(arg==100){
    stop('조회할 수 없다') # stop 만나는 순간 종료. 밑에 로직 수행안됨.
  }else{
    if(!'employees' %in% ls()){
      employees <- read.csv("C:/Users/USER/Downloads/data정명찬/employees.csv", header = T)
    }
    df<- employees[employees$EMPLOYEE_ID == arg,c('LAST_NAME','SALARY')]
    
    if(nrow(df)==1){
      print(df)
    }else{
      print('사원이 존재하지 않습니다')
    }
  }
}

find <- function(arg){
  if(arg==100){
    warning('조회할 수 없다')
    print('오늘 행복하자') # warning은 수행하면서 마지막에 경고만 띄우는거
  }else{
    if(!'employees' %in% ls()){
      employees <- read.csv("C:/Users/USER/Downloads/data정명찬/employees.csv", header = T)
    }
    df<- employees[employees$EMPLOYEE_ID == arg,c('LAST_NAME','SALARY')]
    
    if(nrow(df)==1){
      print(df)
    }else{
      print('사원이 존재하지 않습니다')
    }
  }
}

find(100)


x1 <- data.frame(id=c(100,200,300),sql=c(70,80,90))
x2 <- data.frame(id=c(100,200,300),r=c(85,90,60))

rbind(x1,x2)
cbind(x1,x2) # 일치하지 않아서 안합쳐진다고. 

# R 에서도 JOIN 역할하는 거 있어
■ merge(join)
두 데이터프레임의 공통된 값을 기준으로 병합(조인) 한다.

#equi join, simple join, 등가조인


merge(x1,x2) #겹치는 이름의 컬럼을 기준으로 합치는거지
            # 지금 id 로 겹치는게 있는데, 겹치는게 없으면 카티시안 곱으로 가는겨




x3 <- data.frame(id=c(100,200,300),sql=c(70,80,90))
x4 <- data.frame(is=c(100,200,500),r=c(85,90,60))
merge(x3,x4)

merge(x1,x2,by='id') # 동일한 컬럼 기준으로 병합하는건데 동일한 컬럼이 여러개면 이렇게 특정 지어줘


merge(x3,x4,by.x='id',by.y='is') # 값은 같은 값이 있는데 컬럼이름이 다른경우 이렇게 연결

merge(x3,x4,by.x='id',by.y='is', all.x=T) #left outer join 한거. 오른쪽에(+) 붙이는 효과. 
merge(x3,x4,by.x='id',by.y='is', all.y=T) #right outer join 한거. 왼쪽에(+) 붙이는 효과. 
merge(x3,x4,by.x='id',by.y='is', all=T)   #full outer join 한거. (+)왼, (+)오를 union한 효과.

departments <- read.csv("C:/Users/USER/Downloads/data정명찬/departments.csv",header=T)

departments

merge(employees,departments,by='DEPARTMENT_ID',)


# 여기 다 다시 제발

[문제105]20번 부서에 소속되어 있는 사원들의 last_name, salary,job_id, department_name 출력

x<-employees[employees$DEPARTMENT_ID==20, c('LAST_NAME','SALARY','JOB_ID','DEPARTMENT_ID')]
merge(x,departments)[,c('LAST_NAME','SALARY','JOB_ID','DEPARTMENT_ID','DEPARTMENT_NAME')]


[문제106] 급여가 3000 이상이고 JOB_ID가 ST_CLERK인 사원들의 employee_id, salary, job_id, department_name을 출력해주세요
x<-employees[employees$SALARY >= 3000 & employees$JOB_ID == 'ST_CLERK', c('EMPLOYEE_ID','SALARY','JOB_ID','DEPARTMENT_ID')]
x
merge(x,departments)[,c('EMPLOYEE_ID','SALARY','JOB_ID','DEPARTMENT_NAME')]

[문제107] commission_pct에 NA인 사원들의
LAST_NAME, SALARY, DEPARTMENT_ID,DEPARTMENT_NAME을 출력해주세요.
x<-employees[is.na(employees$COMMISSION_PCT)==T,c('LAST_NAME','SALARY','DEPARTMENT_ID')]
      ,departments[,c('DEPARTMENT_ID','DEPARTMENT_NAME')],by='DEPARTMENT_ID')

[문제108] commission_pct에 NA가 아닌 사원들의
LAST_NAME, SALARY, DEPARTMENT_ID,DEPARTMENT_NAME을 출력해주세요.
merge(employees[is.na(employees$COMMISSION_PCT)==T,c('LAST_NAME','SALARY','DEPARTMENT_ID')]
      ,departments[,c('DEPARTMENT_ID','DEPARTMENT_NAME')],by='DEPARTMENT_ID')


[문제109] commission_pct에 NA가 아닌 사원들의
LAST_NAME, SALARY, DEPARTMENT_ID,DEPARTMENT_NAME을 출력해주세요. 단 부서가 없는 사원도 출력해주세요.


[문제110] 사원의 last_name, 관리자 last_name을 출력해주세요.
w <- employees[,c('LAST_NAME','MANAGER_ID')]
m <- employees[,c('LAST_NAME','EMPLOYEE_ID')]
df<-merge(w,m,by.x='MANAGER_ID',by.y='EMPLOYEE_ID')[,c('LAST_NAME.x','LAST_NAME.y')]
names(df)<-c('사원이름','관리자이름')
df
[문제111] 사원의 last_name, 관리자 last_name을 출력해주세요. 관리자가 없는 사원도 출력해주세요.




jobgrades <- read.csv("C:/Users/USER/Downloads/data정명찬/job_grades.csv",header=T)

[문제112] 부서이름별 총액 급여를 출력하세요.
x<-aggregate(SALARY ~ DEPARTMENT_ID,employees,sum)
merge(x,departments)[,c("DEPARTMENT_NAME",'SALARY')]

t<- tapply(employees$SALARY,employees$DEPARTMENT_ID,sum)
t
df<- data.frame(t)
df


[문제113] 부서이름,직업별 급여의 총액을 구하세요.


[문제114] 최고 급여를 받는 사원의 이름, 급여, 부서코드, 부서이름를 출력하세요.
x<-employees[employees$SALARY == max(employees$SALARY),c("LAST_NAME","SALARY","DEPARTMENT_ID")]

merge(x,departments)[,c("LAST_NAME","SALARY","DEPARTMENT_ID",'DEPARTMENT_NAME')]

[문제115] 사원들의 급여 등급을 출력해주세요. last_name, salary, grade_level
employees[,c("LAST_NAME","SALARY")]
jobgrades[]

employees$SALARY


level <- NULL
for(i in employees$SALARY){
 level <- c(level,jobgrades[i >= jobgrades$LOWEST_SAL & i<= jobgrades$HIGHEST_SAL,'GRADE_LEVEL'])
}

level
data.frame(name=employees$LAST_NAME,
           sal = employees$SALARY,
           level = level)

[문제116] 사번, 부서이름 출력 (for 이용)
dept_name<-NULL
for(i in employees$DEPARTMENT_ID){
 dept_name<-c(dept_name,departments[departments$DEPARTMENT_ID==i,'DEPARTMENT_NAME'])
}


dept_name

data.frame(ID = employees$EMPLOYEE_ID,
           DEPT = dept_name)
---------------------------------------------------
  답

dept_name<-NULL
for(i in employees$DEPARTMENT_ID){
  if(is.na(i)){
    dept_name<-c(dept_name,NA)
  }else{
  dept_name<-c(dept_name,departments[departments$DEPARTMENT_ID==i,'DEPARTMENT_NAME'])
}
}
dept_name

data.frame(ID = employees$EMPLOYEE_ID,
           DEPT = dept_name)


[문제117] locations테이블을 locations.csv 파일로 export한 후 loc 변수로 로드하세요.
Toronto 지역에 근무하는 사원들의 LAST_NAME,SALARY,DEPARTMENT_ID,DEPARTMENT_NAME,STREET_ADDRESS 정보를 출력하세요.
loc<-read.csv("C:/Users/USER/Downloads/data정명찬/locations.csv",header=T)

x<-merge(loc[loc$CITY == 'Toronto',],departments,by='LOCATION_ID')

merge(x,employees,by='DEPARTMENT_ID')[,c('LAST_NAME','SALARY','DEPARTMENT_ID','DEPARTMENT_NAME','STREET_ADDRESS')]



[문제118] 아래 화면의 결과처럼 출력해주세요.
부서이름       부서별급여
Administration       4400
Marketing           19000
Accounting          20308
......
소속부서X            7000
사원총급여         696456

x<-aggregate(SALARY~DEPARTMENT_ID,employees,sum)
y<-merge(x,departments)[,c('DEPARTMENT_NAME','SALARY')]

z<-data.frame(DEPARTMENT_NAME = '소속부서x',
           SALARY = sum(employees[is.na(employees$DEPARTMENT_ID),'SALARY']))

w<-data.frame(DEPARTMENT_NAME = '사원총급여',
              SALARY = sum(employees$SALARY))

s<-rbind(y,z,w)
names(s) <- c("부서이름",'부서별급여총액')
s

[문제119] 부서별 최소급여를 받고 있는 사원정보를 출력해주세요.
dept_min <-aggregate(SALARY~DEPARTMENT_ID,employees,min)
merge(dept_min,employees,by=c('DEPARTMENT_ID','SALARY'))



■ subset

[문제120] 30번부서면서 급여 3000이상, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID출력

subset(employees,DEPARTMENT_ID==30&SALARY>=3000,select=c(LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID))


[문제121]
입사날짜 2002,2003, LAST_NAME,HIRE_DATE,SALARY,JOB_ID,DEPARTMENT_ID

subset(employees,lubridate::year(employees$HIRE_DATE)%in%c(2002,2003),select=c(LAST_NAME,HIRE_DATE,SALARY,JOB_ID,DEPARTMENT_ID))



[문제122] 150번 사원의 급여보다 더 많은 급여를 받는 사원들의 last_name, salary를 출력하세요.
subset(employees,SALARY > employees[employees$EMPLOYEE_ID==150,'SALARY'],select=c('LAST_NAME','SALARY'))
employees[employees$EMPLOYEE_ID==150,'SALARY']

subset(employees,employees$SALARY > subset(employees,EMPLOYEE_ID==150,select='SALARY'),select=c('LAST_NAME','SALARY')) #subset 쓸 때 결과값의 오류 발생 

#subset은 data frame으로 결과가 나옴. 그래서 비교할 때 as.integer 로 바꿔놓고 비교해야돼.
#subset 쓰지 말자 걍;

class(employees[employees$EMPLOYEE_ID==150,'SALARY'])


[문제123]부서이름별 총액,평균,최대를 출력해주세요. 소속부서가 없는 정보도 출력해주세요.

DEPARTMENT_NAME   SUM_SAL   AVG_SAL MAX_SAL
소속부서X            7000  7000.000    7000
Administration       4400  4400.000    4400
Marketing           19000  9500.000   13000
.......

x<-aggregate(SALARY~ifelse(is.na(DEPARTMENT_ID),0,DEPARTMENT_ID),employees,sum) # NA 값은 aggregate 할 때 빠져버리니까
names(x) <- c('DEPARTMENT_ID','SUM_SAL')
x

y<-aggregate(SALARY~ifelse(is.na(DEPARTMENT_ID),0,DEPARTMENT_ID),employees,mean)
names(y) <- c('DEPARTMENT_ID','AVG_SAL')

z<-aggregate(SALARY~ifelse(is.na(DEPARTMENT_ID),0,DEPARTMENT_ID),employees,max)
names(z) <- c('DEPARTMENT_ID','MAX_SAL')
z

x;y;z


a<-merge(x,y)
b<-merge(a,z)
c<-merge(b,departments,all.x=T)[,c('DEPARTMENT_NAME','SUM_SAL','AVG_SAL','MAX_SAL')]
b
c

c[is.na(c$DEPARTMENT_NAME),'DEPARTMENT_NAME'] <-'소속부서X'

c

d<-data.frame(DEPARTMENT_NAME= '소속부서X',
           SUM_SAL=sum(employees[is.na(employees$DEPARTMENT_ID),'SALARY']),
           AVG_SAL=mean(employees[is.na(employees$DEPARTMENT_ID),'SALARY']),
           MAX_SAL=max(employees[is.na(employees$DEPARTMENT_ID),'SALARY']))

rbind(d,c)


# 지금 같은 테이블을 너무 많이 참조하고 있잖아 이걸 해결하기 위해

■ ddply
데이터프레임을 분할하고 함수를 적용한 뒤 데이터 프레임으로 결과를 반환하는 함수

library(plyr)
install.packages("plyr")



# summarise: 기준컬럼의 데이터끼리 모은 후 함수에 적용.

x<-ddply(employees,'DEPARTMENT_ID',summarise,
      SUM_SAL = sum(SALARY),
      AVG_SAL = mean(SALARY),
      MAX_SAL = max(SALARY))
merge(x,departments,all.x=T)[,c('DEPARTMENT_NAME','SUM_SAL','AVG_SAL','MAX_SAL')]



? ddply



[문제124]fruits_sales.csv file 읽어 들인 후 과일 이름별 판매량, 판매합계를 구하세요.(tapply를 이용하세요)
fruits<-read.csv("C:/Users/USER/Downloads/data정명찬/fruits_sales.csv",header=T)
fruits
x<-tapply(fruits$qty,fruits$name,sum)
y<-tapply(fruits$qty*fruits$price,fruits$name,sum)

z<-rbind(x,y)
z<-data.frame(z)
rownames(z)<-c('판매량','판매합계')   #'이름'은 어떻게넣지?
z
------------------------------------
답
x<-tapply(fruits$qty,fruits$name,sum)
y<-tapply(fruits$price,fruits$name,sum)
cbind(x,y)
df<-data.frame(name=names(x),qty=x,price=y)
df
rownames(df)<-NULL
df

[문제125]과일 이름별 판매량, 판매합계를 구하세요.(aggregate를 이용하세요)
a<-merge(aggregate(qty~name,fruits,sum),aggregate(qty*price~name,fruits,sum))
class(a)
names(a)<-c('이름','판매량','판매합계')
a

[문제126]과일 이름별 판매량, 판매합계를 구하세요. (ddply함수를 이용하세요)
b<-ddply(fruits,'name',summarise,
      '판매량'=sum(qty),
      '판매합계'=sum(qty*price))
names(b)[1]<-'이름'
b

[문제127]년도별로 판매량 중에 가장 많은 판매를 한 년도를 출력해주세요.(tapply를 이용하세요)
c<-tapply(fruits$qty,fruits$year,sum)
c
class(c)
rownames(c)

names(c[c==max(c)])
rownames(c)[c==max(c)]

[문제128]년도별로 판매량 중에 가장 많은 판매를 한 년도를 출력해주세요.(aggregate를 이용하세요)
d<-aggregate(qty~year,fruits,sum)
d[d$qty==max(d$qty),'year']

[문제129]년도별로 판매량 중에 가장 많은 판매를 한 년도를 출력해주세요.(ddply를 이용하세요)
e<-ddply(fruits,'year',summarise,
      qty= sum(qty))

e[e$판매량==max(e$판매량),'year']

e
[문제130]년도별 과일판매비율 출력
x<-aggregate(qty~year,fruits,sum)
x

df<-merge(x,fruits,by='year')

df$qty.y/df$qty.x * 100

df$pct_qty <-df$qty.y/df$qty.x * 100 # 여기주목!!!!!!!!데이터프레임에 컬럼추가할때 이렇게 간단해

df
df[,c(-2)]

#summarise : SQ group by 절 그룹을 수행한 집계값
ddply(fruits,'year',summarise,sum_qty=sum(qty))

#transform: 행별로 연산을 수행해서 행당 값을 출력하는 기능, SQL 분석함수 sum(qty) over(partition by year)
ddply(fruits,'year',transform,sum_qty=sum(qty))


ddply(fruits,'year',transform,sum_qty=sum(qty),pct_qty=qty/sum(qty)*100)
ddply(fruits,'year',transform,sum_qty=sum(qty),pct_qty=qty/sum_qty*100) #오류!

#이럴때 mutate로! mutate는 transform과 같지만 sum_qty처럼 미리 연산해논결과를 다시 연산 안하고 그대로 이용할 수 있다.
ddply(fruits,'year',mutate,sum_qty=sum(qty),pct_qty= qty/sum(qty)*100)


[문제131] 년도별로 가장 많이 판매된 정보 출력
x<-aggregate(qty~year,fruits,max) #1번 방법
x


df<-merge(x,fruits,by='year')
df
df[df$qty.x==df$qty.y,]


----------------
x<- ddply(fruits,'year',transform,qty_max=max(qty))
x
  
  
  
  
  
----------------------  
df<- ddply(fruits,'year',mutate,qty_max=max(qty),qty_bool=qty==qty_max)
           df
df[df$qty_bool ==T,]         
           
           
           
이거 걍 
#subset : 그룹함수의 결과를 조건에 따라 수행하는 기능 
ddply(fruits,'year',subset,qty==max(qty))




[문제132]부서별로 최고 급여자들의 정보를 출력해주세요.
library(plyr)
install.packages("plyr")
?ddply
ddply(employees,'DEPARTMENT_ID',subset,SALARY==max(SALARY))

[문제133]부서별로 가장 처음으로 입사한 사원 정보를 출력해주세요.


[문제134]자신의 부서 평균 급여 보다 더 많이 받는 사원들의 EMPLOYEE_ID,DEPARTMENT_ID,SALARY를 출력해주세요.
dept_avg <- aggregate(SALARY~DEPARTMENT_ID,employees,mean)
names(dept_avg)[2]<- 'AVG_SAL'           
dept_avg  
df<- merge(employees,dept_avg)
df[df$SALARY > df$AVG_SAL,c('EMPLOYEE_ID','DEPARTMENT_ID','SALARY','AVG_SAL')]



---# ddply로
  
df<-ddply(employees,'DEPARTMENT_ID',transform,AVG_SAL = mean(SALARY))
df[df$SALARY > df$AVG_SAL,c('EMPLOYEE_ID','DEPARTMENT_ID','SALARY','AVG_SAL')]

-------# ddply subset으로

ddply(employees,'DEPARTMENT_ID',subset,SALARY>mean(SALARY))




employees[employees$DEPARTMENT_ID==20,]
subset(employees,DEPARTMENT_ID==20)


install.packages("dplyr")
library(dplyr)


dplyr::filter() : 조건에 해당하는 필터링하는 함수

filter(employees,SALARY >10000) # 이거 왜 안대;
employees



dplyr::select() : 특정한 컬럼 선택하는 함수

select(employees,EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID)
select(employees, 1,4,7)
select(employees,-LAST_NAME)


x<-subset(employees,SALARY>=10000,select=c(LAST_NAME,SALARY))
x[order(x$SALARY),]
x[order(x$SALARY,decreasing = T),]

library(doBy)
doBy::orderBy(~SALARY,x)
doBy::orderBy(~-SALARY,x)

-------------# dplyr에 정렬도 좋은게 있어
dplyr::arrange() : 정렬
arrange(x,SALARY) #오름차순 정렬
arrange(x,desc(SALARY)) #내림차순
arrange(x,desc(SALARY),LAST_NAME)


select last_name, job_id, salary
from employees
where salary>=10000
order by salary;

filter(employees,SALARY>=10000)
select(employees,LAST_NAME,JOB_ID,SALARY)
arrange(employees,SALARY)

■ 분석가들 거의 이걸로 한다고 보면돼 이거 꼭 기억!!!!!!!!!!!!!!!!!!!

■ %>%(파이프) : 여러문장을 조합해서 사용하는 방법 연산자 #보통 dplyr랑 같이 쓰인다고 봐야돼

employees%>%
  filter(DEPARTMENT_ID==20)

employees%>%
  select(LAST_NAME,JOB_ID,SALARY)%>%
  filter(SALARY>=10000)%>%
  arrange(desc(SALARY)) # 여기 arrange에 select 에 없는 거는 넣으면 안돼


#컬럼추가
employees$ann_sal <- employees$SALARY * 12
head(employees)
employees

employees$ann_sal <- NULL

# dplyr::mutate: 새로운 컬럼을 추가. 근데 미리보기임

mutate(employees,ann_sal=SALARY*12)
head(employees)
?head

employees%>%
  select(LAST_NAME,SALARY,COMMISSION_PCT)%>%
  mutate(ann_sal=SALARY*12)%>%
  arrange(desc(ann_sal))

[문제135] employees 데이터 프레임을 새로운 df 이름으로 복제하세요.
df 데이터 프레임에  새로운 comm 컬럼을 생성하는데 COMMISSION_PCT 값을 기반으로 값을 입력하시고
결측값은 기존 COMMISSION_PCT의 평균 값으로 입력해주세요.(단 mutate함수를 이용하세요)
df<-employees

df<-mutate(df,comm=ifelse(is.na(COMMISSION_PCT),mean(!is.na(COMMISSION_PCT)),COMMISSION_PCT))#이거 안돼 ㅡㅡ !is.na는 값이 아니라 위치 찾는거잖아
df<-mutate(df,comm=ifelse(is.na(COMMISSION_PCT),mean(COMMISSION_PCT,na.rm=T),COMMISSION_PCT))#이렇게 해야돼
head(df)
df

mean(!is.na(employees$COMMISSION_PCT))
mean(employees$COMMISSION_PCT,na.rm=T)
[문제136]30번 부서 사원들이면서 급여는 5000이상인 사원들의 employee_id, salary, department_id를 출력하세요.
(dplyr 패키지에 있는 함수를 이용하세요.)
employees%>%
  select(EMPLOYEE_ID,SALARY,DEPARTMENT_ID)%>%
  filter(SALARY>=5000)
  


[문제137]30번 또는 50번 부서 사원들이면서 급여는 5000이상인 사원들의 employee_id, salary, department_id를 출력하세요.
(dplyr 패키지에 있는 함수를 이용하세요.)
employees%>%
  select(EMPLOYEE_ID,SALARY,DEPARTMENT_ID)%>%
  filter(DEPARTMENT_ID %in% c(30,50))
  
employees%>%
  filter(DEPARTMENT_ID %in% c(30,50))%>%
  select(EMPLOYEE_ID,SALARY,DEPARTMENT_ID)
  




[문제138] COMMISSON_PCT가 NA인 사원들 중에 급여는 10000이상인 사원들의 정보를 출력해주세요.
(dplyr 패키지에 있는 함수를 이용하세요.)
employees%>%
  filter(is.na(COMMISSION_PCT) & SALARY >= 10000)




[문제139] 월요일에 입사한 사원들의 LAST_NAME, SALARY,HIRE_DATE를 출력하세요. 입사한 날짜를 기준으로 오름차순 정렬하세요.
(dplyr 패키지에 있는 함수를 이용하세요.)
library(lubridate)

employees%>%
  select(LAST_NAME,SALARY,HIRE_DATE)%>%
  filter(lubridate::wday(HIRE_DATE,week_start=1,label=T)=='월')%>% # 야 이거 lubridate:: 굳이 안써도 된다;;
  arrange(HIRE_DATE)

year(employees$HIRE_DATE)
?year


#전체 집계값 구하기

sum(employees$SALARY)
mean(employees$SALARY)

data.frame(sum_sal = sum(employees$SALARY),
           avg_sal = mean(employees$SALARY))

plyr::summarise(employees,sum_sal=sum(SALARY),mean_sal=mean(SALARY))
dplyr::summarise(employees,sum_sal=sum(SALARY),mean_sal=mean(SALARY))


select department_id, sum(salary)
from employees
group by department_id;

aggregate(SALARY~DEPARTMENT_ID, employees, sum)
plyr::ddply(employees, 'DEPARTMENT_ID',summarise,sum_sal=sum(SALARY))

employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::summarise(sum_sal=sum(SALARY))

#summarise 함수 사용시에 패키지이름을 지정하지 않으면 우선순위가 plyr::summarise 수행

employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  summarise(sum_sal=sum(SALARY))



employees%>%
  dplyr::group_by(DEPARTMENT_ID,JOB_ID)%>%
  dplyr::summarise(sum_sal=sum(SALARY),mean_sal=mean(SALARY))
  


employees%>%
  dplyr::summarise(sum_sal=sum(SALARY),mean_sal=mean(SALARY),
                   sum_comm=sum(COMMISSION_PCT,na.rm=T),mean_comm=mean(COMMISSION_PCT,na.rm=T))


employees%>%
  dplyr::summarise_at(c('SALARY','COMMISSION_PCT'),c(sum,mean),na.rm=T)


#로드된 패키지 확인

search()

#로드된 패키지 해지
detach(package:plyr,unload=T)

#로드를 안해도 컴퓨터에 설치되어있으면 dplyr::summarise 이렇게 쓰면 쓸 수 있음

employees%>%
  dplyr::summarise_if(is.numeric,c(sum,mean),na.rm=T)

employees%>%
  dplyr::summarise_if(is.character,c(max,min,length))

max(employees$FIRST_NAME)

#select문을 수행하고 있는 user가 insa 유저입니다.
select...
from hr.emp, scott.emp,hr.dept, scott.dept, emp #insa 유저에서 emp테이블을 찾는다.




[문제140] 부서별 급여의 총액을 구한 후 10000이하 정보만 출력해주세요.
1) tapply

df<-tapply(employees$SALARY,employees$DEPARTMENT_ID,sum)
df<-data.frame(df)
class(df)
df
names(df) <- 'SUM_SAL'
rownames(df)
df$DEPARTMENT_ID <- rownames(df)
df
rownames(df) <-NULL
df
df<- df[,c(2,1)]
df[df$SUM_SAL <= 10000,]

2) aggregate
x<-aggregate(SALARY~DEPARTMENT_ID,employees,sum)
x[x$SALARY<=10000,]

3) plyr::ddply
x<- plyr::ddply(employees,'DEPARTMENT_ID',summarise,
            sum_sal=sum(SALARY))
na.omit(x[x$sum_sal<=10000,] )
  
  
4) dplyr
employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::summarise(sum_sal=sum(SALARY))%>%
  dplyr::filter(sum_sal <= 10000)


[문제141]부서별, 요일별 입사 인원수를 출력하세요.
1) tapply
#풀기
tapply(employees$EMPLOYEE_ID,
       list(employees$DEPARTMENT_ID,lubridate::wday(employees$HIRE_DATE,week_start=1,label=T)),length,default=0)

2) aggregate
aggregate(EMPLOYEE_ID~DEPARTMENT_ID+lubridate::wday(employees$HIRE_DATE,week_start=1,label=T),employees,length)


3) plyr::ddply
plyr::ddply(employees,c('DEPARTMENT_ID','lubridate::wday(HIRE_DATE,week_start=1,label=T)'),summarise,
            workers=length(EMPLOYEE_ID))


4) dplyr
employees%>%
  dplyr::group_by(DEPARTMENT_ID,lubridate::wday(HIRE_DATE,week_start=1,label=T))%>%
  dplyr::summarise(workers=length(EMPLOYEE_ID))

data.frame(employees%>%
             dplyr::group_by(DEPARTMENT_ID,lubridate::wday(HIRE_DATE,week_start=1,label=T))%>%
             dplyr::summarise(workers=length(EMPLOYEE_ID)))


options(tibble.print_max=inf)

length(employees$EMPLOYEE_ID)


■ rank

x<-c(85,80,90,70,60,80,NA)

x
sort(x)
sort(x,decreasing=T,na.last= NA)
sort(x,decreasing=T,na.last= F)

order(x)
x[order(x)]
x[order(x,decreasing=T,na.last=T)]


# 오름차순 순위
x<-c(85,80,90,70,60,80,NA)

rank(x)
data.frame(x,rank(x)) # 동일 순위 있으면 평균순위로 나와
data.frame(x,rank(x,na.last=T))

data.frame(점수 = x,
          순위=rank(x,na.last=T,ties.method = 'average')) # 기본값. tie이면 평균순위로 나오는거


data.frame(점수 = x,
             순위=rank(x,na.last=T,ties.method = 'first')) # 같은 점수면 앞쪽에 있는애를 순번높게


data.frame(점수 = x,
             순위=rank(x,na.last=T,ties.method = 'last')) # 같은 점수면 뒤쪽에 있는애를 순번높게


data.frame(점수 = x,
             순위=rank(x,na.last=T,ties.method = 'random')) # 같은 점수면 랜덤으로 매겨

data.frame(점수 = x,
             순위=rank(x,na.last=T,ties.method = 'max')) # 동차면 낮은등수로 같이 매겨

data.frame(점수 = x,
             순위=rank(x,na.last=T,ties.method = 'min')) # 동차면 높은등수로 같이 매겨

data.frame(점수 = x,
             순위=rank(x,na.last='keep',ties.method = 'last')) #NA는 표시하는데 등수를 안줘


# 내림차순 순위
data.frame(점수 = x,
             순위=rank(-x,na.last=T,ties.method = 'last')) # 내림차순 -x


data.frame(점수 = x,
             순위1=rank(x,na.last=T,ties.method = 'min'),
             순위2=dplyr::min_rank(x))

data.frame(점수 = x,
             순위1=rank(-x,na.last=T,ties.method = 'min'),
             순위2=dplyr::min_rank(desc(x)))

# 연이은 순위 구하기!!!!!
data.frame(점수 = x,
             순위1=rank(x,na.last=T,ties.method = 'min'),
             순위2=dplyr::min_rank(x),
             순위3=dplyr::dense_rank(x)) #dense_rank 여기도 있다.


[문제142] 급여를 많이 받는 순으로 순위를 구한다음에 1등 에서 5위 까지 출력해주세요.
연이은 순위를 이용하세요.

employees[dplyr::dense_rank(desc(employees$SALARY)) %in% 1:5,]

employees%>%
  dplyr::mutate(rank=dplyr::dense_rank(desc(SALARY)))%>%
  dplyr::filter(rank<=5)



[문제143]  ann_sal 새로운 컬럼을 생성하세요. 값은 commission_pct NA 면 salary * 12,
아니면 (salary * 12) + (salary * 12 * commission_pct) 입력한 후 ann_sal컬럼의 값에 내림차순 기준으로
10위까지 출력해주세요.

employees$ann_sal <- ifelse(is.na(employees$COMMISSION_PCT),employees$SALARY*12,employees$SALARY*12+(employees$SALARY * 12 * employees$COMMISSION_PCT))



rank(-employees$ann_sal,na.last=T,ties.method = 'first')
rank(dplyr::dense_rank(desc(employees$ann_sal))) 

employees[rank(-employees$ann_sal,na.last=T,ties.method = 'first') <= 10,]

employees%>%
  dplyr::mutate(ann_sal=ifelse(is.na(COMMISSION_PCT),SALARY*12,SALARY*12+(SALARY * 12 *COMMISSION_PCT)),
                dense_rank= dplyr::dense_rank(desc(employees$ann_sal)))%>%
  dplyr::filter(dense_rank<=10)



[문제144] 부서별 급여를 기준으로 내림차순 순위를 구하세요  # 총액급여가 아니자나;
library(dplyr)
?dplyr
employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::summarise(sum_sal=sum(SALARY))%>%
  dplyr::dense_rank(desc(sum_sal))

employees%>%
  dplyr::select(EMPLOYEE_ID,DEPARTMENT_ID,SALARY)%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::mutate(rank=dplyr::dense_rank(desc(SALARY)))%>%
  dplyr::arrange(DEPARTMENT_ID)


[문제145] JOB_ID별 급여를 많이 받는 사원 1등만 추출

plyr로도 풀어보기



employees%>%
  dplyr::summarise(n())


employees%>%
  dplyr::filter(DEPARTMENT_ID==20)%>%
  dplyr::summarise(n())

employees%>%
  dplyr::count()


employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::count()

employees%>%
  dplyr::count(DEPARTMENT_ID,JOB_ID)

employees%>%
  dplyr::count(DEPARTMENT_ID,JOB_ID,sort=T)

employees%>%
  dplyr::add_count(DEPARTMENT_ID)


employees%>%
  dplyr::group_by(DEPARTMENT_ID)%>%
  dplyr::summarise(부서인원수 = n(),
                        부서내JOB_ID수 = n_distinct(JOB_ID))


emp <- employees[,c('EMPLOYEE_ID','LAST_NAME','DEPARTMENT_ID')]
dept <- departments[,c('DEPARTMENT_ID','DEPARTMENT_NAME')]

merge(emp,dept,by='DEPARTMENT_ID')
dplyr::inner_join(emp,dept,by='DEPARTMENT_ID') #merge를 dplyr inner_join으로 가능

merge(emp,dept,by='DEPARTMENT_ID',all.x=T)
dplyr::left_join(emp,dept,by='DEPARTMENT_ID')

merge(emp,dept,by='DEPARTMENT_ID',all=T)
dplyr::full_join(emp,dept,by='DEPARTMENT_ID')


■소속 사원이 있는 부서 정보를 출력

#SQL

1)in -> 부하 걸려. SQL은 서버에서 돌리는 거라 이거 매우 안좋음. distinct 쓰면 애초에 그걸 select 하느라고 컴퓨터 박 터짐
select*
from departments
where dpeartment_id in (select department_id #select distinct department_id 주의!!!!!
                        from employees);

2)exists -> semi join 기법이 돌아간다.
select
from departments d
where exists (select 'x'
              from employees
              where department_id = d.department_id)



# R
1) in -> R은 내 PC에서 돌리는 거라 괜찬. unique 해도됨
departments[departments$DEPARTMENT_ID%in%employees$DEPARTMENT_ID,]

departments[departments$DEPARTMENT_ID%in%unique(employees$DEPARTMENT_ID),]

3)inner_join
dplyr::inner_join(departments,employees,by='DEPARTMENT_ID') #m쪽 집합이 나와버리잖아;;

2) exists 처럼 처리하기 semi join #1쪽 집합으로 나오게 하려면 semi join 해줘야 된다고
departments%>%
  dplyr::semi_join(employees,by='DEPARTMENT_ID')



■ 소속 사원이 없는 부서 정보를 출력

#SQL

1) ANTI JOIN : 키값에 해당하지 않는걸 뽑는거지 (not exists 사용)
select
from departments d
where not exists (select 'x'
              from employees
              where department_id = d.department_id)

# R
departments%>%
  dplyr::anti_join(employees,by='DEPARTMENT_ID')


■ 관리자 사원들의 정보 출력

employees[employees$EMPLOYEE_ID %in% employees$MANAGER_ID,]

employees%>%
  dplyr::semi_join(employees,by=c('EMPLOYEE_ID'='MANAGER_ID'))


■ 관리자 아닌 사원들의 정보 출력


employees%>%
  dplyr::anti_join(employees,by=c('EMPLOYEE_ID'='MANAGER_ID'))

■ sqldf
SQL을 이용해서 데이터를처리


install.packages("sqldf")

library(sqldf)


employees[,c('EMPLOYEE_ID','LAST_NAME')]

sqldf("select * from employees")
sqldf("select EMPLOYEE_ID,LAST_NAME from employees") # 컬럼은 대소문자 구분 X 테이블 명은 대소문자 구분한다!

sqldf("select distinct department_id from employees")


sqldf("select *
from departments d
where not exists (select 'x'
                  from employees
                  where department_id = d.department_id)")


sqldf("select 1+2 from dual") #이거 안됨
sqldf("select 1+2") # 그냥 이렇게 사칙연산

sqldf("select e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id") # -> 왼쪽오른쪽 위치바꾸면 되니까 right 는 없음
                                            # full도 없음 어차피 서버 과부하 안걸리니까 왼 오 해서 union으로 합치래..

sqldf("select e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id
      union
      select e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id") # 이렇게 하는건데 여기서 우연히 이름이랑 부서이름 겹치는 애들이 제거돼 그래서

sqldf("select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id
      union
      select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id")  #e.employee_id 처럼 고유한거를 추가로 뽑아줘


sqldf("select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id
      union all
      select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id") 


sqldf("select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id
      union all
      select e.employee_id, e.last_name, d.departmet_name
      from departments d left outer join employees e
      on e.department_id= d.department_id") 

union -> union all + not exists #union은 정렬이 발생하니까 안좋아. union all은 정렬없으니까 union all 쓰고 not exists로 중복값만 없애주자



sqldf("select e.employee_id, e.last_name, d.department_name
      from departments d left outer join employees e
      on e.department_id= d.department_id
      union all
     select NULL,NULL,department_name
      from departments d
      where not exists (select 'x'
                        from employees
                        where department_id = d.department_id)") 

sqldf("select NULL,NULL,department_name
      from departments d
      where not exists (select 'x'
                        from employees
                        where department_id = d.department_id)")

----------------------#여기부터 스샷보고 필기 다시 ----------------

■ 시각화

■ 양적자료
-숫자, 크기로 측정되는 값
-연속형 자료 : 실수형, 키, 몸무게
-이산형 자료 : 정수형, 남학생수, 여학생수, 출생아수

■ 질적자료(범주형)
- 자료의 내포하고 있는 의미가 있는 데이터
- 순위형자료 : 학점(A,B,), 설문조사(좋다,보통,나쁘다)
- 명목형자료 : 성별(남,여),혈액형(A,B,O,AB), 거주지역


                  요약방법            자료정리          그래프
=------------------------------------------------------------------
  질적자료         표                 도수분포표        원, 막대그래프
                                      빈도표
                                      상대빈도표
    
  양적자료        수치, 표            도수분표포        히스토그램, 상자도표, 산점도, 막대그래프
                                      합, 평균,
                                      분산, 표준편차
                                      최대값,최소값,
                                      범위, 중앙값

시각화 대표 업체- tableau

■ pie chart

-범주형 자료에 대한 상대도수 분포표를 나타내기 위해 일반적으로 사용
- 원을 그린 후 그 원에 각 계급의 상대도수에 대응하는 면적 또는 부분으로 나눈다.




예) s회사에서 새로 개발한 스마트폰의 디자인에 대하여 고객 100명을 임의로 뽑아 선호도 조사를 했다.
100명 중 45명이 좋다, 25명은 보통, 20명은 싫다, 10명은 답을 하지 않았다.
조사에 대한 도수분포표(빈도표)를 생성해 보자

도수분포표
범주형 자료에 대해서 도수와 상대도수를 나열하는 표

선호도 도수 상대도수               각도
---------------------------------------------------------
좋다   45      45/100 = 0.45      360 *0.45 =  
보통   25     25/100 = 0.25       360 *0.25 =
싫다   20     20/100 = 0.2        360 * 0.2=
무응답 10     10/100 = 0.1        360 *0.1=


data <- data.frame(labels = c('좋다','보통','싫다','무응답'),
                   frequency = c(45,25,20,10))

data$상대도수 <- data$frequency / sum(data$frequency)

data

pie(data$상대도수, labels= data$labels)

pie(data$상대도수,
    labels=paste0(data$labels,' ',data$상대도수*100,'%'),
    col=c("red","blue","yellow","green"),
    main='고객만족도조사',
    cex=1.2,
    lty=1)

colors()
palette()

pie(rep(1,12),col=rainbow(12))
pie(rep(1,12),col=heat.colors(12))
pie(rep(1,12),col=terrain.colors(12))
pie(rep(1,12),col=topo.colors(12))
pie(rep(1,12),col=cm.colors(12))


library(RcolorBrewer)
display.brewer.all()
install.packages(RcolorBrewer) # 이거 왜 안돼?

display.brewer.pal(8, "Dark2")






[문제152] blood.csv 파일을 읽어 들여서 도수분포표를 작성 하시고
          pie chart도 생성해 주세요.


blood <- read.csv("C:/Users/USER/Downloads/data정명찬/blood.csv",header=T)
blood






data <- data.frame(BLOODTYPE=c('A','B','O','AB'),
                   cnt=c(NROW(blood[blood$BLOODTYPE=='A',]),NROW(blood[blood$BLOODTYPE=='B',]),
                              NROW(blood[blood$BLOODTYPE=='O',]),NROW(blood[blood$BLOODTYPE=='AB',])))

data



data$pct <- data$cnt/ sum(data$cnt)

data[NROW(data)+1,] <- c('total',sum(data$cnt), sum(data$pct))
data

pie(data$pct, 
    labels= paste(data$BLOODTYPE,'형'),
    main = '혈액형',
    col = rainbow(12))


-----------답-------
  
x<-aggregate(NAME~BLOODTYPE,blood,length)
names(x)[2] <-'CN'
x$PCT <- x$CN/sum(x$CN)
x

x<-rbind(x,list('total',sum(x$CN),sum(x$PCT)))
x
x$PCT[1:4]


pie(x$PCT[1:4],
    labels=paste(x$PCT[1:4]*100,'%'),
    main = '혈액형분포',
    col=brewer.pal(4,"Set1"),
    clockwise=T)

# legend 사용법 : legend는 따로 이렇게 붙여준다

legend("topleft",x$BLOODTYPE[1:4],fill=brewer.pal(4,"Set1"))


install.packages("RColorBrewer")
library(RColorBrewer)

#pie chart 3D로 만들기
install.packages("plotrix")


p<-plotrix::pie3D(x$PCT[1:4],
               labels=paste0(x$PCT[1:4]*100,'%'),
               labelcex=0.9,
               main ='혈액형분포',
               col= brewer.pal(4,"Set2"),
               explode=0.2,
               shade=0.5)


p
plotrix::pie3D.labels(p,labels = x$BLOODTYPE[1:4],
                       labelcex=0.9,
                       labelrad= 0.8)

legend("topleft",x$BLOODTYPE[1:4],fill=brewer.pal(4,"Set1"),
       yjust=1,
       xjust=1)

?legend


[문제153]survey.csv 파일을 읽어 들여서 도수분포표를 작성 하시고 pie chart 생성

survey <-read


dim(t(survey))
survey<- data.frame(name=t(survey))

survey%>%
  group_by(name)%>%
  summarise(cnt=n())

or

result <- aggregate(rownames(survey)~name,survey,length

names(result)[2] <- '빈도'

result$상대도수 <- results$빈도 / sum(result$빈도)

label <- paste(result$name, result$상대도수*100)

pie(result$상대도수, labels=label)


x <- c('a','b','a','a','b','c')
x
sum(x=='a')
sum(x=='b')
sum(x=='c')

# table : 데이터 빈도수를 생성하는 함수

table(x)

table(survey)


# 하나의 열도 벡터다. 벡터로 되어있는게 편해

table(t(survey))


table(employees$DEPARTMENT_ID)
class(table(employees$DEPARTMENT_ID))

sum(table(x))

cbind(table(x),sum(table(x)))

c(table(x),sum(table(x)))



# addmargins():빈도값의 합을 구하는 함수
addmargins(table(x))

table(x)

table(x)/sum(table(x))


# prop.table(빈도값) 상대도수를 구하는 함수
prop.table(table(x))


data.frame(table(t(survey)))
addmargins(table(t(survey)))
prop.table(table(t(survey)))


merge(data.frame(prop.table(table(t(survey))),
data.frame(table(t(survey)))),by='var1')

#빈도표 구하기
table(employees$JOB_ID)
xtabs(~JOB_ID,employees)

tapply(employees$EMPLOYEE_ID,list(employees$JOB_ID,employees$DEPARTMENT_ID),length,default = 0)

table(employees$JOB_ID,employees$DEPARTMENT_ID)
xtabs(~JOB_ID+DEPARTMENT_ID,employees)

tapply(employees$SALARY,list(employees$JOB_ID,employees$DEPARTMENT_ID),sum,default = 0)

x<-xtabs(SALARY~JOB_ID+DEPARTMENT_ID,employees)

#행의합
apply(x,1,sum)
rowSums(x)
addmargins(x)
addmargins(x,2) # 2: 각행의 열들의 합
margin.table(x) # 전체합
margin.table(x,1) #행의 합

#열의합
apply(x,2,sum) # 2: 열기준
colSums(x)
margin.table(x,2)
addmargins(x,1)

#행, 열의 합
addmargins(x,c(1,2))

#상대비율
prop.table(x)
prop.table(x,1) #행기준
prop.table(x,2) #열기준


■ 막대그래프
-빈도표(도수분포표)를 활용하여 각 수준(도수)의 값(크기)을 높이(막대) 로 표현하는 그래프

sales <- c(150,100,70,30)
team <- c('영업1팀','영업2팀','영업3팀','영업4팀')

barplot(height = sales,
        names.arg = team,
        col=rainbow(length(sales)),
        main = "영업팀별 영업 실적",
        xlab = "영업팀",
        ylab = "영업실적(억원)",
        ylim=c(0,200),
        cex.names=0.8)

barplot(height = sales,
        names.arg = team,
        col=rainbow(length(sales)),
        main = "영업팀별 영업 실적",
        ylab = "영업팀",
        xlab = "영업실적(억원)",
        xlim=c(0,200),
        cex.names=0.8,horiz=T)


[문제154] 부서별 인원수를 막대그래프로 시각화
x<-data.frame(aggregate(EMPLOYEE_ID~DEPARTMENT_ID,employees,length))
x

barplot(height = x$EMPLOYEE_ID,
        names.arg= x$DEPARTMENT_ID,
        col=rainbow(length(x$EMPLOYEE_ID)),
        main = "부서별 인원수",
        xlab="부서",
        ylab="인원수")

-----------답------
  
t<-table(employees$DEPARTMENT_ID)
t
barplot(t)
? %>%
[문제155] 부서 이름별 총액급여에 대한 막대그래프. 단, 부서가 없는 사원의 총액급여도 포함
dept_sal <- employees%>%
  group_by(DEPARTMENT_ID)%>%
  dplyr::summarise(sum_sal = sum(SALARY))

library(dplyr)
install.packages("dplyr")

result <- dept_sal%>%
  dplyr::left_join(departments)%>%
  select(DEPARTMENT_NAME,sum_sal)

bp<-barplot(height = result$sum_sal,
        names.arg = result$DEPARTMENT_NAME,
        col = rainbow((nrwo(result)),
        main="부서이름별 총액",
        xlab="부서이름",
        ylab="총급여",
        ylim=c(0,350000),
        las=2,cex.names=0.7,
        cex.axis=0.7))

text(10,34000,labels='오늘 하루도 행복하자')

text(x=bp,
     y=result$sum_sal,
     labels=result$sum_sal,
     cex=0.5,
     pos=3)
# pos=1 : 막대 끝선의 아래쪽
# pos=2 : 막대 끝선의 왼쪽
# pos=3 : 막대 끝선의 위쪽
# pos=4 : 막대 끝선의 오른쪽

result[is.na(result$DEPARTMENT_NAME),1] <-'부서(x)'




막대그래프에 최대값, 최소값만 출력하기
bp[result$sum_sal == max(result$sum_sal)]


text(x=bp[result$sum_sal == max(result$sum_sal)],
     y=max(result$sum_sal),
     labels=max(result$sum_sal),
     cex=0.5,
     pos=3
     col="red")


■ stacked bar plot

x1 <- c(2,6,9,5)
x2 <- c(8,10,15,6)
data <- rbind(x1,x2)
data

name <- c('1팀','2팀','3팀','4팀')
label <- c('2020년','2021년')

barplot(height=data,names.arg = name,
        main='팀별실적',
        xlab='팀',ylab='판매실적',
        ylim=c(0,30),
        legend.text=label,
        col=c('darkblue','red'))


■ group bar plot

barplot(height=data,names.arg = name,
        beside=T,
        main='팀별실적',
        xlab='팀',ylab='판매실적',
        ylim=c(0,30),
        legend.text=label,
        col=c('darkblue','red'))

fruits
[문제156] fruits_sales.csv을 읽어 들인후 년도별, 과일이름별 판매량을 
그룹형 막대그래프로 시각화 해주세요.


tapply(fruits$qty,list(fruits$name,fruits$year),sum)

x<-xtabs(qty~name+year,fruits)

barplot(x,beside=T,
        xlab='년도',ylab='판매량',
        col= c('red','yellow','green','orange'),
        ylim=c(0,20))
legend('topleft',legend=rownames(x),
       col=c('red','yellow','green','orange'),
       pch = 15,cex=0.5)
title(main='년도별 과일 판매량')
---------------------------------------------------------
barplot(x,beside=F,
        xlab='년도',ylab='판매량',
        col= c('red','yellow','green','orange'),
        ylim=c(0,50))
legend('topleft',legend=rownames(x),
       col=c('red','yellow','green','orange'),
       pch = 15,cex=0.5)
title(main='년도별 과일 판매량')


exam <- read.csv("C:/Users/USER/Downloads/data정명찬/exam.csv",header=T)


# 여러개 그래프 보기

graphics.off()
par(mfrow=c(1,1)) #기본값
par(mfrow=c(2,3))

[문제157] exam.csv file에는 학생들의 시험점수가 있습니다. 학생들의 SQL 점수를 막대그래프로 출력해주세요.
exam
barplot(exam[exam$subject=='SQL', 'grade'],
        names.arg=exam[exam$subject=='SQL','name'],
        las=2,ylim=c(0,100),main='SQL점수',
        cex.names=0.7,border=NA,
        col=rainbow(length(exam[exam$subject=='SQL','name'])))


[문제158] exam.csv file에는 학생들의 시험점수가 있습니다. 학생들의 R 점수를 막대그래프로 출력해주세요
[문제159] exam.csv file에는 학생들의 시험점수가 있습니다. 학생들의 PYTHON 점수를 막대그래프로 출력해주세요.
[문제160] exam.csv file에는 학생들의 시험점수가 있습니다. 학생들의 과목 총 점수를 막대그래프로 출력하세요.
exam_total <- aggregate(grade~name,exam,sum)
barplot(exam_total$grade,
        names.arg=exam_total$name)


[문제161] 학생들의 이름을 기준으로 과목점수를 스택형 막대그래프로 생성하세요.
t<-tapply(exam$grade,list(exam$subject,exam$name),sum)
class(t)
barplot(t,
        names.arg=names(t),
        las=2,ylim=c(0,300),main='과목 총점수')

legend('topright',legend = rownames(t), title='과목',pch=15,
       col=rainbow(3),cex=0.5)

adline(h=seq(100,300,50),col='red',lty=2)

library(adline)


install.packages("plotrix")
library(plotrix)

bp<-barplot(t,
            names.arg=names(t),
            las=2,ylim=c(0,300),main='과목 총점수')

bp

plotrix::barlabels(bp,t,bg=rainbow(3),border=NA)


[문제162] 학생들의 이름을 기준으로 과목점수를 그룹형 막대그래프로 생성하세요.

bp<-barplot(t,
        names.arg=names(t),
        beside=T,
        las=2,ylim=c(0,100),main='과목 총점수')
bp
plotrix::barlabels(bp,100,t,bg=rainbow(3),cex=0.7,border=NA)

[문제163]구별 진료과목별 병원 현황을 그룹형 막대그래프로 시각화 해주세요.


data <- read.csv("C:/Users/USER/Downloads/data정명찬/시군구별_표시과목별_의원_현황_20220125112638.csv",header=T)
head(data)
str(data)

names(data)<-data[1,]
str(data)
data[,1]
head(data)

data[-1,c(-1,-3)]
data<-data[-1,c(-1,-3)]
head(data)

names(data)[1]<-'구'

t(data)

data.frame(t(data))

new<-data.frame(t(data))
str(new)
names(new)
new[1,]
names(new)<-new[1,]
str(new)
new<-new[-1,]
new
new<-new[,-1]
str(new)

as.integer

for(i in 1:25){
  new[,i]<-as.integer(new[,i])
}
str(new)

#for문 안쓰고 반복해서 integer로 바꿔주는거 - lapply


new[,1:25]<-lapply(new[,1:25],as.integer)
str(new)

barplot(as.matrix(new[1:9,1:11]),beside=T)



[문제164] 구별 진료 과목에 해당하는 병원수를 막대형 그래프로 만드세요
단, 막대높이 10개당 1개로 만드세요.


barplot(new[1:9,1]*0.1,
        axes=F,xlab="",
        names.arg = rownames(new)[1:9],
        cex.names=0.8,
        col=rainbow(9),
        border = 'white',
        las=2,ylim=c(0,10))
axis(2,ylim=seq(0,40,10))
abline(h=seq(0,50,5),lty=2)



gu <- names(new)

par(mfrow=c(2,5))

for(i in 1:10){

  barplot(new[1:9,i]*0.1,
        axes=F,xlab="",
        names.arg = rownames(new)[1:9],
        cex.names=0.8,
        col=rainbow(9),
        border = 'white',
        las=2,ylim=c(0,10),
        main=paste(gu[i],"병원현황"))
  axis(2,ylim=seq(0,50,10))
  abline(h=seq(0,50,5),lty=2)
}



[문제165] 2015~2019년도별 1군 전염병 발생 현황에 대해 시각화 해주세요.

data <- read.csv("C:/Users/USER/Downloads/data정명찬/감염병_군별_발생현황_20220125152853.csv",header=T)

data

names(data)
rownames(data)
t(data)

str(data)

new<-data[data[,1]=='제1군',]
str(new)
new
names(new)




names(new)<-new[1,]
new<-new[-1,]
names(new)


답
par(mfrow=c(1,1))
data<-data[data$법정감염병군별.1. =='제1군',]
data
data<-data[-1,-1]
names(data)<-c('전염병','2015','2016','2017','2018','2019')
data


data[,2:6] <- lapply(data[,2:6],as.integer)
data

barplot(as.matrix(data[,-1]),beside=T,las=2)

bp<- barplot(as.matrix(data[data$전염병 != 'A형간염',-1]),
        beside=T,col=rainbow(5),ylim=c(0,250))
legend('topleft',title ='질병', legend = data$전염병[1:5],
       cex=0.5,pch=15,col=rainbow(5),box.lty=0)


bp

plotrix::barlabels(bp,100,as.matrix(data[data$전염병 != 'A형간염',-1]),
                   bg=NA,border=NA,cex=0.5)


■ 산점도(scatter plot)
-주어진 데이터를 점으로 표시해 흩뿌리듯이 시각화한 그래프
-데이터의 실제값들이 표시되므로 분포를 한눈에 살펴보는데 유용
- x-y plotting

data()

?women

plot(women$height)
plot(women$weight)
plot(x=women$height,y=women$weight,
     xlab='키',
     ylab='몸무게',
      main= '여성의 키와 몸무게',
     sub='미국 70년대 기준',
     type='n')

type
p : 점, l : 선, b : 점, 선
c : b의 선 o: 점위의 선, h : 수직선, s: 계단형, n : 나타나지않음

lty : 선의 유형 (0~6)
lwd : 선의 굵기(기본값 1)
pch : 점의 종류

data<-data[data$법정감염병군별.1. =='제1군',]
data
data<-data[-1,-1]
names(data)<-c('전염병','2015','2016','2017','2018','2019')
data

data[data$전염병 != 'A형간염',-1]

new<- data.frame(t(data))
str(new)
names(new) <- new[1,]
new

new[,1:6] <- lapply(new[,1:6],as.integer)

plot(new$콜레라,xlab = '', ylab='',type='o',col='violet')
lines(new$장티푸스,type='o',col='blue')
lines(new$파라티푸스,type='o',col='red')
lines(new$세균성이질,type='o',col='blcak')
lines(new$장출혈성대장균감염증,type='o',col='green')
axis(1,at=1:5,label=rownames(new)[1:5],las=2)
axis(2)
abline(h=seq(0,300,50),v=seq(1,10,1),lty=3,lwd=0.2)
legend('topright',legend=names(new)[1:5],cex=0.5,lty=2,lwd=1,
       col=c('violet','blue','red','black','green'))

[문제166] 2015년~2021년까지 서울에서 '경기도','부산광역시','인천광역시','대구광역시','세종특별자치시' 으로 이동자수를 그래프로 시각화해주세요.

data<-data.frame(t(data))
names(data) <- data[1,]
data<-data[-1,]
str(data)
data[,1:16] <- lapply(data[,1:16],as.integer)
str(data)
data
plot(data$경기도,xlab='',ylab='',ylim=c(0,400000),axes=F, col='violet',type='b')
lines(data$부산광역시, col='blue',type='b')
lines(data$인천광역시, col='red',type='b')
lines(data$대구광역시, col='black',type='b')
lines(data$세종특별자치시, col='green',type='b')
axis(1,at=1:7,label=rownames(data),las=2)
axis(2,at=seq(0,400000,by=500000),las=2)
abline(v=seq(1,10,1),lty=3,lwd=0.2)
legend

install.packages("reshape2")

# reshape2::melt : 컬럼이 많은 형태(wide)가로를 세로방향 긴(long) 형태로 변경하는 함수
reshape2::melt(fruits,id='year')
reshape2::melt(fruits,id='name')
m<-reshape2::melt(fruits,id='year','name')
str(m)

m-> fruits
#reshape2:dcast : long(세로)를 wide(가로)형태로 변경하는 함수
reshape2:dcast(m,year+name~variable)

reshape2:dcast(m,year~variable,sum)
reshape2:dcast(m,name~variable,sum)

library(dplyr)
fruits%>%
  dplyr::group_by(year)%>%
  dplyr::summarise(qty=sum(qty),price=sum(price))

fruits%>%
  dplyr::group_by(name)%>%
  dplyr::summarise(qty=sum(qty),price=sum(price))


data <- read.csv(전출지전입지)
data <- data[-1,-1]
names(data)[2:8]<-c(2015:2021)
data

data <- dcast(melt(data,id='전입지별'),variable~전입지별)
str(data)
data

plot(data$경기도,xlab='',ylab='',ylim=c(0,400000),axes=F, col='violet',type='b')
lines(data$부산광역시, col='blue',type='b')
lines(data$인천광역시, col='red',type='b')
lines(data$대구광역시, col='black',type='b')
lines(data$세종특별자치시, col='green',type='b')
axis(1,at=1:7,label=data$variable,las=2)
axis(2,at=seq(0,400000,by=500000),las=2)
abline(v=seq(1,10,1),lty=3,lwd=0.2)
legend













> score <- scan()

[문제167] 조사된 데이터 값들이 있습니다. 도수분포표를 만드세요.

90 88 78 65 80 94 69 72 83 64 95 68 87 69 82 91 63 70 81 67 

계급                도수    상대도수  누적도수
----------------- -------   --------  --------
  90점이상             4
80점이상~90점미만    6
70점이상~80점미만    3
60점이상~70점미만    7


score

ft <- data.frame(계급=c('90점이상','80점이상~90점미만','70점이상~80점미만','70점이상~80점미만'),
             도수=c(0,0,0,0))

ft

score

ft[1,2]
ft[2,2]

for(i in score){
  if(i >= 90){
    ft[1,2]<-ft[1,2]+1
  }else if(i>=80){
    ft[2,2] <-ft[2,2]+1
  }else if(i>=70){
    ft[3,2] <-ft[3,2]+1
  }else if(i>=60){
    ft[4,2] <-ft[4,2]+1
  }
}

ft


# 상대도수
ft$도수 / sum(ft$도수)
ft$상대도수 <- prop.table(ft$도수)
ft


# 누적도수
ft
ft$누적도수[1] <- ft$도수[1]

# 첫번째 행의 누적도수 : ft$노적도수[1] <- ft$도수[1]
# 두번째 행의 누적도수: ft$누적도수[2] <- ft$도수[2] + ft$누적도수[1]
# 세번째 행의 누적도수: ft$누적도수[3] <- ft$도수[3] + ft$누적도수[2]

ft$누적도수 <- NULL

for(i in 1:nrow(ft)){
  if(i==1){
    ft$누적도수[i]<- ft$도수[i]
  }else{
    ft$누적도수[i]<-ft$도수[i] + ft$누적도수[i-1]
  }
}

ft


[문제168] 조사된 데이터 값들이 있습니다. 도수분포표를 만드세요.
단 기존값(수치형)을 문자(범주형)로 수정한 후 도수를 구하세요.
예) 90 -> '90점이상', 95 -> '90점이상', 88 -> '80점이상~90점미만'

score

for (i in score){
  if(i>=90){
    score[score==i]<-'90점이상'
  }else if(i>=80){
    score[score==i]<-'80점이상~90점미만'
  }else if(i>=70){
    score[score==i]<-'70점이상~80점미만'
  }else if(i>=60){
    score[score==i]<-'60점이상~70점미만'
  }
}

score

table(score)

data.frame()


  
categorical<-function(x){
ifelse(x>=90,'90점이상',
       ifelse(x>=80,'80점이상~90점미만',
              ifelse(x>=70,'70점이상~80점미만','60점이상~70점미만')))
}


s<-categorical(score)

data.frame(table(s))

table(factor(s))
df<-data.frame(table(factor(s,levels =c('90점이상','80점이상~90점미만','70점이상~80점미만','60점이상~70점미만'))))
df
names(df)<-c('계급','도수')
df

df$상대도수 <- prop.table(df$도수)
df

# 누적도수 알아서 구해주는 로직 cumsum(도수)
df$누적도수 <- cumsum(df$도수)
df

■ cut
연속형 변수를 범주형 변수로 변환하는 함수
min(score)
max(score)
table(cut(score,breaks=seq(60,100,by=10),right=F))

cut(score,breaks=seq(60,100,by=10),right=F)
cut(score,breaks=seq(60,100,by=10),right=T)

right=F : [60,70) 60점 이상 70점 미만
right=T : (60,70] 60점 초과 70점 이하


x<-cut(score,breaks=seq(60,100,by=10),right=F,
    labels=c('60점이상~70점미만','70점이상~80점미만','80점이상~90점미만','90점이상'))
table(x)
prop.table(table(x))

result<-cbind(table(x),prop.table(table(x)))
class(result)

data.frame(result)

[문제169] cost.txt 데이터를  분석하세요.

cost<-read.table("C:/Users/USER/Downloads/data정명찬/cost.txt")


str(cost)
dim(cost)
cost<-as.matrix(cost)
dim(cost)<-c(50,1)
cost

min(cost)
max(cost)

x<-cut(cost,breaks=seq(50,110,by=20),right=F,
    labels=c('50점이상~70점미만','70점이상~90점미만','90점이상~110점미만'))
table(x)

df<-cbind(table(x),prop.table(table(x)))
df
cumsum(table(x))
df<-cbind(df,cumsum(table(x)))
df<-data.frame(df)
names(df)<-c('도수','상대도수','누적도수')
df

cost

■ 히스토그램(histogram)
-연속형 자료가 모여 있는 위치나 자료의 분포에 관한 대략적인 정보를 파악하는 그래프
-단점은 구체적인 수치정보를 알 수 없다.
# 구간 나눈게 cut 이었으니까 그거처럼 쓴다.
hist(cost)

hist(cost,breaks=seq(50,110,by=10),right=F,
     col=rainbow(7),
     ylim=c(0,20),labels= T)

■ 상자그림(box plot)
- 최소값,제1사분위수,중앙값,제3사분위수,최대값 다섯가지의 요약수치등을 파악할 수 있는 그래프
- 이상치데이터를 확인할 수 있다.


boxplot(1:10)
boxplot(c(1:10,20))
boxplot(cost)
boxplot(cost,horizontal=T)

1. 중앙값(median)
mean(cost)
median(cost)

  1) 관측값을 크기순으로 정렬(오름차순)
  2) 관측값의 개수(n) 홀수면 (n+1)/2 번째 관측값
  3) 관측값의 개수(n) 짝수면 (n)/2 번째 관측값 + (n/2 + 1) 의 평균


2. 사분위수(quartile)
Q1 : 1사분위 : Q2(중앙값)보다 작은 데이터의 중앙값 25%

Q2 : 중앙값

Q3 : 3사분위 : Q2(중앙값)보다 큰 데이터의 중앙값 75%


quantile(1:10)
quantile(1:10, type=7)
quantile(1:10, type=2)
summary(1:10)

boxplot(c(1:10,20),horizontal=T)
#이 boxplot에 표현되는게 이 밑에 max min이 아냐
min(c(1:10,20))
max(c(1:10,20))

사분위범위(inter quartile range)
IQR = Q3-Q1

iqr = 8 - 3

# 가상의 경계선(울타리선) 이 안에 들어온 애들만 정상적이고 벗어나면 이상치라고 간주
upper fence: Q3 +1.5*IQR
8+1.5*5 = 15.5


lower fence : Q1 - 1.5*iqr

-4.5 ~ 15.5 : 이게 우리가 정상 범주라고 생각하는 범위

# 즉, 최소값을 구한다면 -4.5 보다 큰 애들 중에 가장 작은거.
# 최대값을 구한다면 15.5 보다 작은 애들 중에 가장 큰거. 그니까 20은 포함 안시키고 이상치로 처리한거


boxplot(c(1:10,20,-10,-11,-12),horizontal=T)

boxplot.stats(c(1:10,20,-10))

boxplot.stats(c(1:10))



exam<-read.csv("C:/Users/USER/Downloads/data정명찬/exam.csv",header=T)
exam
sql <- exam[exam$subject=='SQL','grade']
r <- exam[exam$subject=='R','grade']
python <-exam[exam$subject=='PYTHON','grade']

boxplot(sql,r,python,names= c('SQL','R','PYTHON'))

[문제170] store.csv 파일에 있는 데이터를 분석하세요.

store<-read.csv("C:/Users/USER/Downloads/data정명찬/store.csv",header=T)
store


hist(store$A,main='A배달',xlab='분',ylab='건수')
hist(store$B,main='B배달',xlab='분',ylab='건수')
hist(store$C,main='C배달',xlab='분',ylab='건수')


boxplot(store)
boxplot.stats(store$A)

quantile(store$A)
quantile(store$B)
quantile(store$C)

# B, C 가 quantile은 똑같이 나와. 그럼 뭘 선택해? 분산 표준편차 적은거.

var(store$B)
var(store$C)

sd(store$B)
sd(store$C)


store

[문제171] 사원들의 급여의 분포를 histogram, boxplot 이용해서 시각화해주세요.


h<-hist(employees$SALARY)
h
hist(employees$SALARY,breaks=seq(0,25000,5000),right=F,
     labels=T,ylim=c(0,60),
     xlab='급여',ylab='빈도수',main='급여 히스토그램')

hist(employees$SALARY,breaks=10,right=F,
     labels=T,ylim=c(0,60),
     xlab='급여',ylab='빈도수',main='급여 히스토그램')





b<-boxplot(employees$SALARY)
b

text(1.2,b$out,b$out,col='red')
b$out

■ ggplot2

library(ggplot2)
install.packages('ggplot2')

?mtcars

mtcars$cyl
barplot(table(mtcars$cyl))

barplot(mtcars$cyl)

ggplot(data=mtcars,aes(x=cyl))+
  geom_bar()


df<-data.frame(table(mtcars$cyl))

ggplot(data=df,aes(x=Var1,y=Freq))+
  geom_col(fill='lightblue',colour='black')

exam <- read.csv("C:/Users/USER/Downloads/data정명찬/exam.csv",header=T)
sql<-exam[exam$subject=='SQL',]
sql
ggplot(data=sql,aes(x=name,y=grade))+
  geom_col(fill='darkblue',colour='black')+
  theme(axis.text.x=element_text(angle=45,vjust=1,colour='green',size=7))+
  labs(title="SQL시험점수",x='학생이름',y='점수')+
  theme(plot.title=element_text(face='bold',color='darkblue'))+
  theme(axis.title.x=element_text(face='bold.italic'))


ggplot(data=sql,aes(x=name,y=grade))+
  geom_bar(stat='identity')+
  theme(axis.text.x=element_text(angle=45,vjust=1,colour='green',size=7))+
  labs(title="SQL시험점수",x='학생이름',y='점수')+
  theme(plot.title=element_text(face='bold',color='darkblue'))+
  theme(axis.title.x=element_text(face='bold.italic'))

#stat='identity' : y축에 명시한 값을 기준으로 그래프를 표현


ggplot(data=exam,aes(x=name,y=grade,fill=subject))+
  geom_bar(stat='identity')+
  geom_text(aes(y=grade,label=paste0(grade,'점')),position=position_stack(vjust=0.5),
            col='blue',size=3)

#geom_bar 나 geom_col 을 쓰는데 col을 더 많이씀
ggplot(data=exam,aes(x=name,y=grade,group=subject))+
  geom_col(aes(fill=subject),position='stack')+ # stack이 기본값
  geom_text(aes(label=grade),position=position_stack(vjust=0.5))


#그룹형 막대그래프
ggplot(data=exam,aes(x=name,y=grade,group=subject))+
  geom_col(aes(fill=subject),position='dodge')+ # dodge 그룹형
  geom_text(aes(label=grade),position=position_dodge(1))


ggplot(data=exam,aes(x=subject,y=grade,group=name))+
  geom_col(aes(fill=name),position='dodge')+ # dodge 그룹형
  geom_text(aes(label=grade),position=position_dodge(1))

[문제172] 부서인원수를 ggplot을 이용해서 막대그래프로 시각화 해주세요.

library(plyr)
dept_cnt <- plyr::ddply(employees,'DEPARTMENT_ID',summarise,cnt=length(EMPLOYEE_ID))
dept_cnt

factor(employees$DEPARTMENT_ID)

ggplot(data=dept_cnt,aes(x=factor(DEPARTMENT_ID),y=cnt))+
  geom_bar(stat='identity',fill=rainbow(nrow(dept_cnt)))+
  geom_text(aes(label=cnt),vjust=3,size=2,col='red')+
  labs(title='부서별 인원 현황',x='부서번호',y='인원수')+
  theme_bw()+
  theme(plot.title=element_text(face='bold',color='darkblue',hjust=0.5))+
  coord_flip()


ggplot(data=dept_cnt,aes(x=factor(DEPARTMENT_ID),y=cnt))+
  geom_bar(stat='identity',fill=rainbow(nrow(dept_cnt)))+
  geom_text(aes(label=cnt),vjust=3,size=2,col='red')+
  labs(title='부서별 인원 현황',x='부서번호',y='인원수')+
  theme(plot.title=element_text(face='bold',color='darkblue',hjust=0.5))+
  scale_x_discrete(labels=c(paste('10','\n','부서'),20,30,40,50,60,70,80,90,100,110,'부서X'))

[문제173] fruits_sales.csv를 읽어들인 후, 년도별 과일이름별 판매량을  ggplot을 이용해서 스택형,그룹형 막대 그래프로 만드세요
fruits

x<-xtabs(qty~name+year,fruits)
x

bp<-barplot(x,beside=T,xlab='년도',ylab='판매량',
        col=rainbow(4),ylim=c(0,20))
legend('topleft',legend=rownames(x),col=rainbow(4),pch=15,cex=0.5)
title(main='년도별 과일 판매량')
plotrix::barlabels(bp,5,x,bg=NA,border=NA,cex=0.5)

bp
library(plotrix)
plotrix::barlabels(bp,5,x,bg=NA,border=NA,cex=0.5)

barplot(x,beside=F,xlab='년도',ylab='판매량',
        col=rainbow(4),ylim=c(0,20))
legend('topleft',legend=rownames(x),col=rainbow(4),pch=15,cex=0.5)
title(main='년도별 과일 판매량')
plotrix::barlabels(bp,5,x,bg=NA,border=NA,cex=0.5)



ggplot(fruits,aes(x=year,y=qty,group=name))+
  geom_col(aes(fill=name),position='stack')+
  geom_text(aes(label=qty),position=position_stack(vjust=0.5))+
  labs(title='년도별 과일 판매량',x='년도',y='수량')+
  guides(fill=guide_legend(title='과일'))+
  scale_fill_discrete(labels=c('사과','바나나','베리','오렌지'))+
  theme(legend.title.align = 0.5,
        legend.box.background = element_rect())
  
?ggplot

ggplot(fruits,aes(x=year,y=qty,group=name))+
  geom_col(aes(fill=name),position='dodge')+
  geom_text(aes(label=qty),position=position_dodge(1),size=3)+
  labs(title='년도별 과일 판매량',x='년도',y='수량')+
  guides(fill=guide_legend(title='과일'))+
  scale_fill_manual(values=c('red','yellow','brown','orange'),
                    labels=c('사과','바나나','베리','오렌지'))+
  theme(legend.title.align = 0.5,
        legend.box.background = element_rect())


  scale_fill_brewer(palette = 'set1') # 이걸로 색 바꿀 수도 있음 근데 이런거 할 때 다른거랑 공존 할 수 있는 지 확인해야해


[문제174] 요일별 입사인원수를  ggplot을 이용해서 시각화 해주세요.

wday_cnt <- plyr::ddply(employees,'wday(HIRE_DATE,week_start=1,label=T)',summarise,cnt=length(EMPLOYEE_ID))
plyr::count(employees,'wday(HIRE_DATE,week_start=1,label=T)') #세는거 그냥 이렇게 count로 할 수 있어.

table(wday(employees$HIRE_DATE,week_start=1,label=T))  #이것도 세는거

library(lubridate)
  
  
class(wday_cnt)
names(wday_cnt) <- c('wday','cnt')
wday_cnt  

ggplot(wday_cnt,aes(x=wday,y=cnt))+
  geom_col(fill='darkblue',colour='black')
  
  
ggplot(data=wday_cnt,aes(x=wday,y=cnt,fill=wday))+
  geom_bar(stat='identity')+
  geom_text(aes(label=cnt),vjust=-0.1,size=2)+
  ggtitle('요일별 입사현황',subtitle='신입사원')+
  labs(x='요일',y='인원수',fill='요일',caption='2001년~2008년')+
  theme(plot.title=element_text(face='bold',color='darkblue',hjust=0.5))+
  theme(plot.subtitle=element_text(face='bold',color='darkblue',hjust=0.5))
  
  

wday_cnt<-plyr::count(employees,'wday(HIRE_DATE,week_start=1)')
names(wday_cnt)<-c('wday','cnt')


# wday(숫자)를 factor로 바꿔야 legend도 요일로 바꿀수있어
ggplot(data=wday_cnt,aes(x=wday,y=cnt,fill=factor(wday)))+
  geom_bar(stat='identity')+
  geom_text(aes(label=cnt),vjust=-0.1,size=2)+
  ggtitle('요일별 입사현황',subtitle='신입사원')+
  labs(x='요일',y='인원수',fill='요일',caption='2001년~2008년')+
  theme(plot.title=element_text(face='bold',color='darkblue',hjust=0.5))+
  theme(plot.subtitle=element_text(face='bold',color='darkblue',hjust=0.5))+
  scale_x_continuous(breaks=1:7,labels=c('월','화','수','목','금','토','일'))+
  scale_fill_brewer(palette='BuPu',labels=c('월','화','수','목','금','토','일'))
  
 #scale_x_continuous를 이용해서 x축 이름들을 변경하려는 경우 
 #factor형은 수행될 수 없다. 숫자형으로 바꾼 후에 변경작업 수행해야 한다.


#원형차트 만들기
wday_cnt <- plyr::ddply(employees,'wday(HIRE_DATE,week_start=1,label=T)',summarise,cnt=length(EMPLOYEE_ID))
plyr::count(employees,'wday(HIRE_DATE,week_start=1,label=T)')
class(wday_cnt)
names(wday_cnt) <- c('wday','cnt')
wday_cnt    

wday_cnt$pct<-round(prop.table(wday_cnt$cnt)*100)
wday_cnt

ggplot(data=wday_cnt,aes(x='',y=pct,fill=factor(wday)))+
  geom_bar(stat='identity')+
  coord_polar(theta='y',start=0)+
  theme_void()


ggplot(data=wday_cnt,aes(x='',y=pct,fill=factor(wday)))+
  geom_bar(stat='identity')+
  geom_text(aes(label=paste0(pct,'%')),position=position_stack(vjust=0.5))

ggplot(data=wday_cnt,aes(x='',y=pct,fill=factor(wday)))+
  geom_bar(stat='identity')+
  coord_polar(theta='y',start=0)+
  theme_void()+
  geom_text(aes(label=paste0(pct,'%')),position=position_stack(vjust=0.5))+
  scale_fill_brewer(palette='Set3')


[문제175] blood.csv파일의 데이터를 이용해서 원형차트를 생성해주세요.
blood<-read.csv("C:/Users/USER/Downloads/data정명찬/blood.csv",header=T)
blood
x<-xtabs(~BLOODTYPE,blood)
y<-round(prop.table(x)*100)
type<-data.frame(cbind(x,y))
names(type)<-c('cnt','pct')

ggplot(data=type,aes(x='',y=pct,fill=factor(type)))+
  geom_bar(stat='identity')+
  coord_polar(theta='y',satrt=0)

----------답-----
  
blood_freq <- data.frame(table(blood$BLOODTYPE))
names(blood_freq)<- c('BLOODTYPE','FREQ')
blood_freq$PCT <- prop.table(blood_freq$FREQ)*100
blood_freq

ggplot(data=blood_freq,aes(x='',y=PCT,fill=BLOODTYPE))+
  geom_bar(stat='identity')+
  coord_polar(theta='y')+
  theme_void()+
  theme(legend.position='bottom')+
  scale_fill_brewer(palette='Greens')

library(RColorBrewer)
display.brewer.all()





#양방향 barplot

blood_gender<-aggregate(NAME~GENDER+BLOODTYPE,blood,length)
names(blood_gender)[3]<-'CN'

blood_gender

blood_gender[blood_gender$GENDER=='M','CN']<-blood_gender[blood_gender$GENDER=='M','CN'] * -1

ggplot(data=blood_gender,aes(x=BLOODTYPE,y=CN,fill=GENDER))+
  geom_bar(stat='identity')


ggplot(data=blood_gender,aes(x=BLOODTYPE,y=CN,fill=GENDER))+
  geom_bar(data=subset(blood_gender,GENDER='M'),stat='identity')+
  coord_flip()

install.packages('ggplot2')
library(ggplot2)


ggplot(data=blood_gender,aes(x=BLOODTYPE,y=CN,fill=GENDER))+
  geom_bar(stat='identity')+
  ggtitle('성별 혈액형 현황')+
  theme(plot.title = element_text(face='bold',color='darkblue',hjust=0.5,size=2))+
  labs(fill='성별')+
  scale_fill_brewer(palette='BuPu',labels=c('여성','남성'))+
  geom_text(aes(label=ifelse(CN<0,CN*-1,CN)))+
  #geom_text(aes(label=abs(CN)))
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())+
  theme(axis.title.x=element_blank())


ggplot(data=blood_gender,aes(x=BLOODTYPE,y=CN,fill=GENDER))+
  geom_bar(stat='identity')+
  ggtitle('성별 혈액형 현황')+
  theme(plot.title = element_text(face='bold',color='darkblue',hjust=0.5,size=2))+
  labs(fill='성별')+
  scale_fill_brewer(palette='BuPu',labels=c('여성','남성'))+
  geom_text(aes(label=ifelse(CN<0,CN*-1,CN)))+
  #geom_text(aes(label=abs(CN)))
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  theme(axis.title.y=element_blank())+
  coord_flip()

x<-data.frame(day=1:5,weight=c(50,53,52,60,48))
ggplot(data=x,aes(x=day,y=weight))+
  geom_line(linetype=1)

ggplot(data=x,aes(x=day,y=weight))+
  geom_line(linetype='dotdash',color='blue',size=2)



[문제176] ggplot 이용해서 line plot 생성하기
data <- read.csv("C:/Users/USER/Downloads/data정명찬/감염병_군별_발생현황_20220125152853.csv",header=T)

data<- head(data[-1,-1])
data
names(data)<-c('전염병','2015','2016','2017','2018','2019')
str(data)

data[,2:6]<-lapply(data[,2:6],as.integer)
data


전염병 년도 건수
콜레라  2015  0
...

library(reshape2)

df<-melt(data,id='전염병')
names(df)[2:3]<-c('년도','건수')
df

ggplot(data=df[df$전염병=='A형간염',],aes(x=년도,y=건수,group=전염병,color=전염병))+
  geom_line()

ggplot(data=df[df$전염병!='A형간염',],aes(x=년도,y=건수,group=전염병,color=전염병))+
  geom_line(linetype=2)

ggplot(data=df[df$전염병!='A형간염',],aes(x=년도,y=건수,group=전염병,color=전염병))+
  geom_line(aes(linetype=전염병,color=전염병,size=전염병))+
  scale_linetype_manual(values=c('dashed','dotted','dotdash','longdash','twodash'))+
  scale_color_manual(values=c('red','blue','green','yellow','gray'))+
  scale_size_manual(values=c(seq(1,1.8,by=0.2)))

ggplot(data=df[df$전염병 != 'A형간염',],aes(x=년도,y=건수,group=전염병,color=전염병))+
  geom_point(shape=20,fill='yellow',color='pink',size=10)

ggplot(data=df[df$전염병 != 'A형간염',],aes(x=년도,y=건수,group=전염병,color=전염병))+
  geom_point(aes(shape=전염병,color=전염병,size=전염병))+
  scale_shape_manual(values=c(10:14))+
  scale_color_manual(values=c('red','blue','green','yellow','gray'))+
  scale_size_manual(values=c(seq(1,1.8,by=0.2)))


library(dplyr)
df%>%
  filter(전염병 == 'A형간염')%>%
  select(전염병,년도,건수)%>%
  ggplot(aes(x=년도,y=건수,group=전염병))+
    geom_line()

------


df%>%
  filter(전염병 == 'A형간염')%>%
  select(년도,건수)%>%
  ggplot(aes(x=as.integer(년도),y=건수)+ #group지을 게 없는 경우에 x축이 factor형으로 되어있으면 수치형으로 바꿔야 한다.
  geom_line()

------------여기 사이

cost<-read.table("C:/Users/USER/Downloads/data정명찬/cost.txt")
cost
cost<-as.matrix(cost)
dim(cost)<-c(50,1)
dim(cost)

hist(cost)

cost<-data.frame(cost)
head(cost)
names(cost)<-'freq'
head(cost)

ggplot(data=cost,aes(x=freq))+
  geom_histogram(binwidth = 10,aes(fill=..count..))

employees
ggplot(data=subset(employees,DEPARTMENT_ID %in% c(30,50)),aes(x=SALARY))+
  geom_histogram(binwidth=2000)

ggplot(data=subset(employees,DEPARTMENT_ID %in% c(30,50)),aes(x=SALARY))+
  geom_histogram(binwidth=2000)+
  facet_grid(.~DEPARTMENT_ID)

ggplot(data=subset(employees,DEPARTMENT_ID %in% c(30,50)),aes(x=SALARY))+
  geom_histogram(binwidth=2000)+
  facet_grid(DEPARTMENT_ID~.)

ggplot(data=cost,aes(x=1,y=freq))+


-----------------
  
covid <-read.csv("C:/Users/USER/Downloads/data정명찬/covid_19_clean_complete.csv",header=T)
covid
str(data)


[문제177] 코로나 바이러스 데이터에서 가장 최근 국가별 확진자, 사망자, 획복자 수를 구한후 확진자 수로 내림차순 정렬하세요.
covid$Date <- as.Date(covid$Date)
str(covid)
current_covid<-covid[covid$Date==max(covid$Date),]

head(current_covid)
View(current_covid)


library(plyr)
install.packages('plyr')

x<-plyr::ddply(current_covid,'Country.Region',summarise,
            Confirmed=sum(Confirmed),
            Deaths=sum(Deaths),
            Recovered=sum(Recovered))

library(doBy)
# doBy로 orderBy

x
library(dplyr)
current_covid <- current_covid%>%
  dplyr::group_by(Country.Region)%>%
  dplyr::summarise(Confirmed=sum(Confirmed),
                   Deths=sum(Deaths),
                   Recovered=sum(Recovered))%>%
  dplyr::arrange(desc(Confirmed))

new<- current_covid
names(new)[2]<-'Confirmed'
names(new)



[문제178] 확진자 수가 가장 많은 10개의 국가의 확진자수,사망자수,회복자수를 그룹형 막대그래프  시각화 하세요.(barplot 이용)
head(new)

orderBy(~-Confirmed,new)[1:10,]

new$rank <- dplyr::dense_rank(desc(new$Confirmed))
df<- new[new$rank<=10,]
orderBy(~rank,df)
#---------이렇게, 혹은
new$rank <- NULL
new
top_10 <- new%>%
  dplyr::mutate(rank=dplyr::dense_rank(desc(new$Confirmed)))%>%
  dplyr::filter(rank<=10)%>%
  dplyr::arrange(rank)

top<-t(top_10[,c(-1,-5)]) #그냥 t 하면 첫번째가 문자라 숫자도 문자로 바뀌는데 -1,-5하니까 숫자형으로 나옴

label<-top_10[,1]
top
label

barplot(top,names.arg=label,beside=T,las=2,
        legend.text=rownames(top),
        col=c('darkblue','red','yellow'),
        main='Covid 확진자수가 많은 10개 국가')
options('scipen'=100)

[문제179] 확진자 수가 가장 많은 10개의 국가의 확진자수,사망자수,회복자수를 그룹형 막대그래프  시각화 하세요.(ggplot 이용)
top_10<-reshape2::melt(top_10[,-5],id='Country.Region')

library(ggplot2)
?ggplot2

ggplot(top_10,aes(x=Country.Region,y=value,group=variable))+
  geom_col(aes(fill=variable),position='dodge')+
  theme(axis.text.x=element_text(angle=90))

ggplot(top_10,aes(x=reorder(Country.Region,value),y=value,group=variable))+
  geom_col(aes(fill=variable),position='dodge')+
  theme(axis.text.x=element_text(angle=90)) #reorder -> y 값 기준으로 순서대로 표시하기

ggplot(top_10,aes(x=reorder(Country.Region,-value),y=value,group=variable))+
  geom_col(aes(fill=variable),position='dodge')+
  theme(axis.text.x=element_text(angle=90)) #내림차순은 이렇게.

ggplot(top_10,aes(x=reorder(Country.Region,-value),y=value,group=variable))+
  geom_col(aes(fill=variable),position='dodge')+
  theme(axis.text.x=element_text(angle=90))+
  labs(title='Covid 확진자수가 많은 10개 국가',
       x='',y='')+
  #labs(fill='발생')
  #guides(fill=guide_legend(title='발생'))
  scale_fill_discrete(name='발생',labels=C('확진자','사망자','회복자'))



[문제180] 날짜별 확진자수,사망자수,회복자수를 line plot 그래프로 시각화 하세요.(plot 이용)

covid <-read.csv("C:/Users/USER/Downloads/data정명찬/covid_19_clean_complete.csv",header=T)
covid
str(data)
covid$Date <- as.Date(covid$Date)
str(covid)
current_covid<-covid[covid$Date==max(covid$Date),]

library(dplyr)
date_covid <- covid%>%
  dplyr::group_by(Date)%>%
  dplyr::summarise(Confirmed=sum(Confirmed),
                   Deths=sum(Deaths),
                   Recovered=sum(Recovered))

plot(date_covid$Confirmed,xlab='',ylab='',axes=F,col='violet',
     type='l',lwd=1,main='날짜별 Covid 발생 현황')
lines(date_covid$Deths,col='red',type='l',lwd=1)
lines(date_covid$Recovered,col='blue',type='l',lwd=1)
axis(1,at=1:nrow(date_covid),labels=date_covid$Date,las=2)
axis(2,las=1)
legend('topleft',legend = c('confirmed','deaths','recovered'),
       col=c('violet','red','blue'),cex=0.6,lty=1,lwd=2,bg='white')


[문제181] 날짜별 확진자수,사망자수,회복자수를 line plot 그래프로 시각화 하세요.(ggplot 이용)
date_covid



library(reshape2)  
melt(date_covid,id='Date')    

covid_19<-melt(date_covid,id='Date')
head(covid_19)
ggplot(data=covid_19,aes(x=Date,y=value,group=variable,color=variable))+
  geom_line()+
  scale_x_date(date_labels='%Y-%m-%d',date_breaks='30 days')+
  theme(axis.text.x = element_text(angle=90))
  
  
library(wordcloud)
install.packages('wordcloud')

?wordcloud

word <- c('건강','취업','비전','희망','여행','공부','열정','행복','결혼','쇼핑','주식','로또')
freq <- c(100,200,300,340,500,300,200,100,50,250,350,20)
length(word)
length(freq)

wordcloud(word,freq,colors = rainbow(length(word)),
          random.order = F,
          scale = c(7,1),
          min.freq=300,
          max.words = 100)

[문제182] 공백문자를 기준으로 분리 한 후 단어의 빈도수를 구하고 wordcloud를 이용해서 시각화 해주세요.


data <- "R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.[6] The R language is widely used among statisticians and data miners for developing statistical software[7] and data analysis.[8] Polls, data mining surveys, and studies of scholarly literature databases show substantial increases in popularity;[9] as of January 2021, R ranks 9th in the TIOBE index, a measure of popularity of programming languages.[10]
A GNU package,[11] the official R software environment is written primarily in C, Fortran, and R itself[12] (thus, it is partially self-hosting) and is freely available under the GNU General Public License. Pre-compiled executables are provided for various operating systems. Although R has a command line interface, there are several third-party graphical user interfaces, such as RStudio, an integrated development environment, and Jupyter, a notebook interface.[13][14]"

x<-strsplit(data, split=' ')
class(x)

y<-data.frame(table(x))
y[,1]

wordcloud(y[,1],y[,2],colors=brewer.pal(9,'Set1'),
          random.order=F,
          scale=c(5,1),
          min.freq=1,
          max.words=15,
          ) # 열뽑을때 y[,1] 말고 y$x, y$freq 이렇게


■ grep
- 동일한 문자열을 벡터에서 찾아서 인덱스번호, 문자열을 리턴하는 함수

text <- c('a','ab','acb','accb','acccb','accccb')

'a' %in% text
text %in% 'a'
text[text %in% 'a']
which(text %in% 'a')
text[which(text %in% 'a')]

grep('a',text)
grep('ab',text)
grep('acb',text)
grep('c',text)

text[grep('c',text)]
grep('c',text,value=T)


■ 정규표현식(Regular Expression)

# '*' -> 적어도 0번 이상의 패턴을 찾는다. 그니까 없어도 찾어
grep('ac*b',text,value=T)

# '+' -> 적어도 1번 이상의 패턴을 찾는다.
grep('ac+b',text,value=T)

# '?' -> 0번 또는 1번만 패턴을 찾는다.
grep('ac?b',text,value=T)

# {} -> {번} 오는 패턴을 찾는다.
grep('ac{2}b',text,value=T)

# {n,} -> {n번} 이상 오는 패턴을 찾는다.
grep('ac{2,}b',text,value=T)

# {n,m} -> {n번부터 m번까지} 오는 패턴을 찾는다.
grep('ac{2,3}b',text,value=T)


text <-c('abcd','cdab','cabd','c abd')
grep('ab',text,value=T)

# '^ab' 시작되는 문자를 찾는다.
grep('^ab',text,value=T)

# $ 끝나는 문자를 찾는다.
grep('ab$',text, value=T)

# \\b -> 공백문자 이후에 시작되는 문자도 찾는다.
grep('\\bab',text,value=T)

text<-c('^ab','ab','abc','abd','abe','ab 12','$ab', 'ca^bd','ab','abcd','abcfd','abfd')

grep('^ab',text,value=T)

# \\*, \\?, \\^, \\$ 기능으로 말고 순수한 글자로 취급하고 싶을 떄 \\


# . 어떤 문자 하나를 의미한다.
grep('.', text, value=T)

grep('ab.', text, value=T)
grep('ab..', text, value=T)
grep('ab...',text, value=T)
grep('abc',text,value=T)
grep('^abc$',text,value=T)

grep('abc',text,value=T)
grep('abd',text,value=T) # 이거 두개 다 하는법

# [...] 리스트 안에있는 문자패턴을 찾는다.
grep('ab[c,d]',text,value=T)

grep('ab[c-e]',text,value=T)


# [...] 리스트 안의 ^는 NOT을 의미
grep('ab[^c]',text,value=T)

grep('ab[^c,d,e]',text,value=T)



text<- c('sql','SQL','sql100','PLSQL','plsql','R','r','r0','python','PYTHON','pyth0n',
         'phthon#','100','*100','*','$','^','!','@','#','%','&','(',')','~','?','행복')

class(text)

# 숫자를 찾는 방법
grep('[0-9]',text,value=T)
grep('\\d',text,value=T)
grep('[[:digit:]]',text,value=T)

# 대문자를 찾는 방법
grep('[A-Z]',text,value=T)
grep('[[:upper:]]',text,value=T)

# 소문자를 찾는 방법
grep('[a-z]',text,value=T)
grep('[[:lower:]]',text,value=T)

# 대, 소문자를 다 찾는 방법
grep('[A-Za-z]',text,value=T)
grep('[A-z]',text,value=T) # 이렇게 하면 특수문자 ^도 포함해서 찾는다.
grep('[A-Za-z\\^]',text,value=T)

# 한글을 찾는다.
grep('[가-힣]',text,value=T)


grep('[ㄱ-ㅣ]',text,value=T)

grep('[가-힣ㄱ-ㅣ]',text,value=T)

grep('[A-Za-z가-힣]',text,value=T)
grep('[[:alpha:]]',text,value=T) # 문자열 다뽑기

#문자,숫자 있는 문자 패턴을 찾는 방법
grep('[A-Za-z가-힣ㄱ-ㅣ0-9]',text, value=T)
grep('[[:alnum:]]',text,value=T)
grep('\\w',text,value=T)

# 특수문자가 있는 문자 패턴을 찾는 방법
grep('\\W',text,value=T)
grep('[[:punct:]]',text,value=T)


# 숫자 제외
grep('[^0-9]',text,value=T)
grep('\\D',text,value=T)
grep('[^[:digit:]]',text,value=T)


employees

employees[employees$FIRST_NAME=='Steven','FIRST_NAME']
employees[employees$FIRST_NAME=='Stephen','FIRST_NAME']

grep('Steven',employees$FIRST_NAME,value=T)
grep('Stephen',employees$FIRST_NAME,value=T)

# | 또는
grep('Steven|Stephen',employees$FIRST_NAME,value=T)

name<-c('Steven','Stephen')
grep(name,employees$FIRST_NAME,value=T)

grep(paste(name,collapse='|'),employees$FIRST_NAME,value=T)

grep('Ste(v|ph)en',employees$FIRST_NAME,value=T)



data <- "R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.[6] The R language is widely used among statisticians and data miners for developing statistical software[7] and data analysis.[8] Polls, data mining surveys, and studies of scholarly literature databases show substantial increases in popularity;[9] as of January 2021, R ranks 9th in the TIOBE index, a measure of popularity of programming languages.[10]
A GNU package,[11] the official R software environment is written primarily in C, Fortran, and R itself[12] (thus, it is partially self-hosting) and is freely available under the GNU General Public License. Pre-compiled executables are provided for various operating systems. Although R has a command line interface, there are several third-party graphical user interfaces, such as RStudio, an integrated development environment, and Jupyter, a notebook interface.[13][14]"

[문제183] 첫문자가 대문자로 시작되는 단어를 찾으세요.
x<-strsplit(data, split=' ')
class(x)
x<-unlist(x)
x

grep('^[A-Z]',x,value=T)

[문제184] 숫자가 있는 단어를 찾아주세요.
grep('[0-9]',x,value=T)


[문제185] 특수문자가 있는 단어를 찾아주세요.
grep('\\W',x,value=T)



[문제186] [숫자]가 있는 단어를 찾아주세요.
grep('\\[[0-9]\\]',x,value=T)
grep('\\[\\d\\]',x,value=T)
-------------답
grep('\\[[0-9]{1,}\\]',x,value=T)
grep('\\[\\d+\\]',x,value=T)


library(stringr)

?stringr

text %in% 'SQL'
grep('SQL',text,value=T)


#str_detect : 특정한 문자가 있는지 검사해서 TRUE,FALSE를 리턴하는 함수
str_detect(text,'SQL')
text[str_detect(text,'SQL')]

grep('^S',text,value=T)
text[str_detect(text,'^S')]

grep('^s',text,value=T)
text[str_detect(text,'^s')]

grep('^[Ss]',text,value=T)
text[str_detect(text,'^[Ss]')]

grep('[Nn]',text,value=T)
text[str_detect(text,'[Nn]')]

grep('[Nn]$',text,value=T)
text[str_detect(text,'[Nn]$')]

text <- c('sqlsql','ssqls','SQLs')

text

#str_count : 주어진 단어에서 해당 글자가 몇번 나오는지를 리턴하는 함수
str_count(text,'s')
str_count(text,'sql')

paste('R','빅데이터분석')
paste('R','빅데이터분석',sep='')

str_c('R','빅데이터분석',sep=',')

?str_c

x<- c('R','빅데이터분석')
x

paste(x[1],x[2])
str_c(x[1],x[2])

str_c(x,collapse=' ')

#str_dup : 주어진 문자열을 주어진 횟수만큼 반복해서 출력하는 함수

str_dup('파도 소리 듣고 싶다.',10)

#str_length('해운대 가고 싶다')
str_length('해운대 가고 싶다')

#str_locate : 주어진 문자열에서 특정한 문자가 처음으로 나오는 위치를 리턴
str_locate('january','an')

#str_locate_all : 주어진 문자열에서 특정한 문자가 나오는 위치를 모두 리턴
str_locate_all('january','a')
str_locate_all('january','a')[[1]][1]

str_locate_all('january','a')[[1]][1,]

gsub('a','*','banana')

#str_replace: 주어진 문자열에서 처음 일치하는 것만 바꾸는 함수 (sub)
str_replace('banana','a','*')

#str_replace_all : 일치하는 모든 문자 바꾸는 함수
str_replace_all('banana','a','*')


#str_split : 지정된 문자를 기준으로 문자를 분리하는 함수
strsplit('R,Developer',split=',')

str_split('R,Developer',',')



#str_sub : 주어진문자열에서 지정된 시작 인덱스부터 끝인덱스까지 문자를 추출하는 함수
substr('RDeveloper',1,1)

str_sub('RDeveloper',1,1)
str_sub('RDeveloper',start=1,end=5)

substring('RDeveloper',2)
str_sub('RDeveloper',2)


# 문자열에서 뒤에 글자를 추출하는 법
substr('RDeveloper',nchar('RDeveloper')-1,nchar('RDeveloper'))
str_sub('RDeveloper',start=-2)


# str_trim : 접두 접미 부분의 연속되는 공백문자를 제거하는 함수
nchar('   R   ')
str_trim('   R    ')
str_length(str_trim('   R    '))


str_trim('   R   ',side='both') # 기본값
str_trim('   R   ',side='left') # 왼쪽
str_trim('   R   ',side='right') # 오른쪽

trimws('    R    ')


text<- c('sql','SQL','sql100','PLSQL','plsql','R','r','r0','python','PYTHON','pyth0n',
         'phthon#','100','*100','*','$','^','!','@','#','%','&','(',')','~','?','행복')

grep('[[:digit:]]',text,value=T)
text[str_detect(text,'\\d')]


# str_extract : 문자열에서 지정된 문자열을 찾는 함수
str_extract(text,'[[:digit:]]+')
str_extract(text,'[[:digit:]]{1,}')
str_extract_all(text,'[[:digit:]]+') # 결과만 list 자료형으로.


text<-'R is programming language PYTHON is programming language'


x<-unlist(strsplit(text,split=' '))

grep('programming',x,value=T)

str_extract(text,'programming') # 문장 내에서 단어를 검색할 때는 처음으로 찾는 단어만 추출한다.
str_extract(x,'programming') # 벡터 내에서 검색할 때에는 다 찾아줘

str_extract_all(text,'programming') #문장내에서 all 쓰면 다 찾아줘

unlist(str_extract_all(x, 'programming'))


data <- "R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.[6] The R language is widely used among statisticians and data miners for developing statistical software[7] and data analysis.[8] Polls, data mining surveys, and studies of scholarly literature databases show substantial increases in popularity;[9] as of January 2021, R ranks 9th in the TIOBE index, a measure of popularity of programming languages.[10]
A GNU package,[11] the official R software environment is written primarily in C, Fortran, and R itself[12] (thus, it is partially self-hosting) and is freely available under the GNU General Public License. Pre-compiled executables are provided for various operating systems. Although R has a command line interface, there are several third-party graphical user interfaces, such as RStudio, an integrated development environment, and Jupyter, a notebook interface.[13][14]"

[문제187] 첫문자가 대문자로 시작되는 단어를 찾으세요.
str_extract_all(data,'[[:upper:]]{1,}[[:alpha:]]{0,}')
str_extract_all(data, '[A-Z]+\\w*')


[문제188] 숫자를 찾아주세요.
str_extract_all(data,'[[:digit:]]{1,}')
str_extract_all(data,'\\d+')




[문제189] 숫자 앞과 뒤에 있는 문자도 찾아주세요.
str_extract_all(data,'[[:alpha:]]{0,}[[:digit:]]{1,}[[:alpha:]]{0,}')
str_extract_all(data,'\\w*\\d+\\w*')
str_extract_all(data,'\\w{0,}\\d+\\w{0,}')




[문제190] 관사 a, A, the, The 함께 사용되는 단어을 출력해주세요.
str_extract_all(data,'(a|A|the|The) \\w+')

str_extract_all(data, '(a|A|the|The)\\s\\w+')
str_extract_all(data, '(a|A|the|The)[[:space:]]\\w+')


[문제191] 숫자 앞과 뒤에 있는 문자 또는 숫자들은 전부 공백문자로 수정한 후 text1 변수에 저장하세요.
str_extract_all(data,'\\w{0,}\\d+\\w{0,}')
text1 <-str_replace_all(data,'\\w{0,}\\d+\\w{0,}',' ')
str_extract_all(text1,'\\w{0,}\\d+\\w{0,}')



[문제192] text1변수에 특수문자만 찾아주세요.
str_extract_all(text1,'[[punct:]]')
str_extract_all(text1, '\\W')


[문제193] text1변수에 특수문자 앞과 뒤에 문자가 있는 문자를 찾아주세요.
str_extract_all(text1,'\\w+[[:punct:]]\\w+')



[문제194] 특수문자 앞과 뒤에 문자가 있는 문자를 찾아서 특수문자를 제거한 단어로 변환해주세요.
str_extract_all(text1,'\\w+[[:punct:]]\\w+')
"self-hosting" "Pre-compiled" "third-party" 

text1<- str_replace(text1,"self-hosting","selfhosting")
text1<- str_replace(text1,"Pre-compiled","Precompiled")
text1<- str_replace(text1,"third-party","thirdparty")

text1
text1<-str_replace_all(text1,'[[:punct:]]',' ')
text1

str_extract_all(text1, '[[:punct:]]')
text1<- str_replace(text1,"selfhosting","self-hosting")
text1<- str_replace(text1,"Precompiled","Pre-compiled")
text1<- str_replace(text1,"thirdparty","third-party")


[문제195] text1 변수에 있는 문장의 단어의 빈도수를 구하세요.
text1<-tolower(text1)
word<-unlist(str_split(text1,' '))
word
sum(word=='')
word<-word[!nchar(word)==0]
word
df<-data.frame(table(word))
df
wordcloud(df$word,df$Freq)
?wordcloud
library(wordcloud)


library(ggplot2)
library(dplyr)


df%>%
  filter(!word %in% c('and','the','is','of','a','in','as','are'))%>%
  filter(Freq>=2)%>%
  ggplot(aes(x=reorder(word,Freq),y=Freq))+
  geom_col()+
  coord_flip()




[문제196] data 변수에 있는 문장에서 [숫자] 대괄호 안에 있는 숫자들을 추출해주세요.
str_extract_all(data,'\\[\\d+\\]')




[문제197] data 변수에 있는 문장에서 (문자) 괄호안에 있는 문자를 추출해 주세요.
str_extract_all(data,'\\([^)]+\\)')



[문제198] data 변수에 있는 문장에서 콤마 앞에 문자와 같이 추출해 주세요.
str_extract_all(data,'\\w+,')
str_extract_all(data,'\\w+\\.')

str_extract_all(data,'\\w+[;,.]')
str_extract_all(data,'\\w+(;|,|\\.)')


[문제199] 전화번호를 추출해주세요.

message <- '안녕하세요. 전화번호는 02-123-4567 입니다.
문의사항이 있으면 031-1234-0000 으로 연락주시기 바랍니다.
폰 번호는 010-1234-1004 고객센터 전화번호 1588-3600  대표전화 : 031)777-1140'

library(stringr)
str_extract_all(message,'[0-9]*\\)*[0-9]+\\-+[0-9]*\\-*[0-9]*')
str_extract_all(message,'[0-9]*\\)*\\-*[0-9]*\\-*[0-9]+')

#답


str_extract_all(message,'(\\d{2,3})?(-|\\))?\\d{3,4}-\\d{4}')




[문제200] 이메일 주소를 추출해주세요.

message = '담당자 이메일주소는 webmaster@itwill.co.kr  
           이메일 주소는 happy.o@gmail.com   
           이메일 주소는 happy123@naver.com 입니다. info_search@joins.com'


str_extract_all(message,'[\\w.]+@[\\w.]+')



seoul <- readLines("C:/Users/USER/Downloads/dataJMC/seoul.txt")
[문제201] seoul.txt 파일을 날짜를 추출해서 월별 빈도수를 확인 하고 시각화 해주세요.
seoul
seoul1<-str_extract_all(seoul,'\\d{4}[\\d-]+')
seoul2<-str_sub(seoul1,6,7)
table(seoul2)
df<-data.frame(table(seoul2))

library(ggplot2)

df%>%
  ggplot(aes(x=seoul2,y=Freq))+
  geom_col()

)
[문제202] seoul.txt 파일을 단어별 빈도수를 확인 하고 시각화 해주세요.
seoul
library(stringr)

Sys.getlocale()
Sys.setlocale()

str_extract_all(seoul,'\\d{4}[\\d-]+')
#날짜제거
data<-str_replace(seoul,'\\d{4}[\\d-]+','')
# 문장 앞 숫자 제거
str_extract(data,'^\\d{1,3}')
data<-str_replace(data,'^\\d{1,3}','')

# 문장 앞, 뒤 공백문자제거
data<-str_trim(data)

#문장 제일 끝에 숫자 제거
str_extract(data,'\\d{1,3}$')
data<-str_replace(data,'\\d{1,3}$','')

data

#[]문자 추출
x<-unlist(str_extract_all(data,'\\[\\w+\\]'))
x[!is.na(x)]

grep('\\[\\w+\\]',data,value=T)

str_replace(data,'\\[|\\]','')
grep('\\[\\w+\\]',data,value=T)

#()문자 추출
x<-unlist(str_extract_all(data,'\\(\\w+\\)'))
x[!is.na(x)]s

data<-str_replace(data,'(\\(|\\))',' ')
data

str_split(data,' ')

unlist(str_extract_all(data,'O+'))
grep('O+',data,value=T)

# OOOOO OO OOO 제거
data<-str_replace_all(data,'O+','')
data
grep('O+',data,value=T)

data <- paste(data,collapse=' ')
data
word_cnt<-data.frame(table(str_split(data,' ')))
head(word_cnt)

library(wordcloud)

wordcloud(word_cnt$Var1, word_cnt$Freq)

install.packages('wordcloud2')
library(wordcloud2)
wordcloud2(word_cnt,col='random-light',
           backgroundColor='black',
           shape='star')

[문제203] review.txt 파일 전처리 수행
review <- read.csv("C:/Users/USER/Downloads/dataJMC/review.txt")
View(review)
library(stringr)

# 평점
POINT <-unlist(str_extract_all(review[,2],'총 10점 중\\d{1,2}'))
review$point <- str_replace_all(POINT,'총 10점 중','')

review[98,2]


# ID, 날짜 
iddate<-review[,3]


review$date<-unlist(str_extract_all(iddate,'[\\d.]+$'))
review$id<-str_replace_all(iddate,'[\\d.]+$','')


# 단어
str_extract_all(review[,2],'총 10점 중\\d{1,2} \\w+')
comment <- str_replace(review[,2],'신고$','')
str_replace_all(comment,'[\\\n\\\t]','')

# 답
# \n \t 제거
grep('\n',review$감상평,value=T)
str_extract_all(review$감상평,'(\n|\t)')
review$감상평 <- str_replace_all(review$감상평,'(\n|\t)','')

# 두개 이상의 공백문자를 한개로 변경
grep('\\s{2,}',review$감상평,value=T)
str_extract_all(review$감상평,'\\s{2,}')

str_replace_all(review$감상평,'\\s{2,}',' ')
review$감상평 <- str_squish(review$감상평) # str_squish 쓰면 공백 2개 이상을 1개로 바꿈

# 불필요한 글자 지우기
str_extract_all(review$감상평,'해적: 도깨비 깃발 별점 - 총 10점 중')
str_extract_all(review$감상평,'신고$')
review$감상평 <- str_replace_all(review$감상평,'해적: 도깨비 깃발 별점 - 총 10점 중','')
review$감상평 <- str_replace_all(review$감상평,'신고$','')

# 평점 뽑아 넣기
review$point <- as.integer(str_extract(review$감상평,'^\\d{1,2}'))

boxplot(review$point)

review$감상평<- str_replace(review$감상평,'^\\d{1,2}','')

# ID, 날짜 분리
review$id <- str_extract(review$글쓴이.날짜,'\\w{1,}\\*{1,}')
review$date <- str_extract(review$글쓴이.날짜,'\\d{2}\\.\\d{2}\\.\\d{2}')


review$evaluation <- ifelse(review$point>=8,'긍정','부정')

positive <- review[review$evaluation=='긍정','감상평']
positive

negative <- review[review$evaluation=='부정','감상평']

positive <- paste(review[review$evaluation=='긍정','감상평'],collapse=' ')
negative <- paste(review[review$evaluation=='부정','감상평'],collapse=' ')

str_split(positive,' ')
str_split(negative,' ')
positive<-data.frame(table(str_split(positive,' ')))
negative<-data.frame(table(str_split(negative,' ')))

wordcloud2(positive)
wordcloud2(negative)

■ 텍스트 전처리 과정
1. 토큰화(Tokenization): 텍스트를 정해진 단위로 나누는 작업
- 단어 : 빈칸을 기준으로 나눈다.
- 형태소 : 의미를 가지는 최소단위, 품사를 기준으로 나누는 작업
- 글자 : 한글자 기준으로 나누는 작업
- 초성(자음), 중성(모음), 종성(자음)

2. 불용어 처리(stopword)
- 의미없는 단어를 제거하는 작업

3. 의미없는 특수문자, 숫자 제거
S&P -> sandp 바꾸기
특수문자 전부 제거
sandp -> S&P로 다시 수정

1100고지 -> 천백고지
천백고지 -> 1100고지

4. 대소문자 통일

TUMP, Tump, tump
Tump -> Tump_unique
tump, tump_unique, tump
tump_unique -> Tump

5. 어근추출
- 단어 표현에 대한 통일 작업을 해야한다.
예) 놀아요, 놀아, 놀고싶어요, 놀다왔어요 -> 놀다.

-Lemmatization : 사전적으로 표현
-Stemming : 알고리즘을 통해서 기계적으로 변환, 신조어, 은어


6. 텍스트 인코딩 : 텍스트를 벡터로 표현
- Bag of words, tF-idf


■ KONLP

1. JAVA_HOME 위치확인
Sys.getenv('JAVA_HOME')
Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jdk1.8.0_271")

2.rJava 설치
install.packages('rJava')
library(rJava)

3. konlp 프로그램과 관련있는 프로그램을 설치
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages('remotes')

4. konlp 설치
remotes::install_github('haven-jeon/KoNLP', upgrade = "never",
                        INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
?? KoNLP

useSejongDic()
useNIADic()

text <- 'R은 오픈소스로 통계, 기계학습, 금융, 생물정보학, 그래픽스에 이르는 다양한 통계 패키지를 갖추는 좋은 프로그램이다.'

text

#명사 추출
extractNoun(text)


# 품사 태깅
?SimplePos09

SimplePos09(text)

SimplePos22(text)



[문제204] SimplePos22(text) 품사 태깅의 보통명사만 추출해주세요.
x<-SimplePos22(text)

extractNoun(text)

library(stringr)
str_replace_all(unlist(str_extract_all(x, '[가-힣]+/NC')),'/NC','')

str_match_all(x,'[가-힣]+/NC')
unlist(str_match_all(x,'[가-힣]+/NC'))
na.omit(str_match_all(x,'[가-힣]+/NC'))

as.vector(na.omit(str_match_all(x,'[가-힣]+/NC')))

[문제205]review$tagging 열을 생성해서 감상평의 품사 태깅정보가 입력되도록 하세요.

review <- read.csv("C:/Users/USER/Downloads/dataJMC/review.txt")



View(review)

review$tagging

x <- SimplePos22(review$감상평)
review$감상평[1]
x[[1]]

unlist(x[1])

paste(unlist(x[1]),collapse= ' ')

review$감상평[2]
x[[2]]

paste(unlist(x[2]),collapse= ' ')

sapply(x,function(arg){paste(unlist(arg),collapse=' ')})

?sapply

review$tagging <- sapply(x,function(arg){paste(unlist(arg),collapse=' ')})

[문제 205-1]
review$noun : review$tagging 열 안에 있는 내용 중 보통명사만 추출해서 새로운 열애 저장

str_replace_all(str_extract_all(review$tagging,'[가-힣]+/NC'),'/NC','')

x<-str_extract_all(review$tagging,'[가-힣]+/NC')

sapply(x,function(arg){paste(str_replace_all(arg,'/NC',''),collapse=' ')})

review$noun <- sapply(x,function(arg){paste(str_replace_all(arg,'/NC',''),collapse=' ')})


■ 크롤링(crawling)
- 자동화된 방법으로 웹을 탐색하는 컴퓨터 프로그램
-인터넷 사이트의 웹페이지를 수집해서 분류하는 프로그램






■ 스크래핑(scraping)
- 웹브라우저 화면에 표시되는 html 문서에서 사용자가 필요한 정보만 추출하여 수집하는 기술


1. 사용자가 웹브라우저의 주소창에서 url을 입력한다.
2. request: 웹브라우저는 요청한 메시지를 작성해 웹서버로 전송한다.
3. response: 웹서버는 요청받은 정보를 클라이언트에게 보낸다. (HTML)
4. 웹브라우저는 응답메시지를 해석해 사용자에게 정보를 출력한다.


install.packages('rvest')
library(rvest)

html <- rvest::read_html('https://www.joongang.co.kr/article/25045987')
html

str_extract_all(html,'<title>.+</title>')
str_extract_all(html,'<body>.+</body>') # 이렇게 해도 안뽑히고 그래 rvest로 해야돼


html_node(html,'title') # 처음 하나만 찾는다
html_nodes(html,'title') # 전부 다 찾는다

html_nodes(html,'p') 


html_node(html,'h1')
html_nodes(html,'h1')%>%
  html_text()

html_nodes(html,'div#article_body')%>% #id는 #으로, class는 .으로
  html_text()

# 인코딩(encoding)  ASCII문자(16진값)
인공지능 -> %EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5

# 디코딩
인공지능 <- %EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5

# 특정한 뉴스 기사 검색의 url 수집
html <- rvest::read_html('https://www.joongang.co.kr/search?keyword=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5')
html

url<- html_nodes(html,'h2.headline')%>%
  html_nodes('a')%>%
  html_attr('href')

length(url)

#수집된 url을 이용해서 본문 뉴스 내용 수집

html <- read_html(url[1])

html_nodes(html,'div.article_body.fs3')%>%
  html_text()


news <- c()
for (i in 1:length(url)){
  html <- read_html(url[i])
  temp <- html_nodes(html,'div.article_body.fs3')%>%
      html_text()
  news <- c(new,temp)
  Sys.sleep(2)
}

news

write(news,'C:/Users/USER/Downloads/dataJMC/news.txt')

ai_news<-readLines('C:/Users/USER/Downloads/dataJMC/news.txt')
ai_news


[문제206] 동아일보 '인공지능' 뉴스기사 검색을 통해 본문기사 내용을 donga_ai.txt로 저장하고
본문 뉴스 기사 내용 중 명사만 추출해서 wordcloud로 시각화 해주세요.
단 뉴스 기사는 5페이지까지 수집

html<-read_html('https://www.donga.com/news/search?check_news=1&more=1&sorting=1&range=1&search_date=&v1=&v2=&query=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5')
html

url<- html_nodes(html,'p.tit')%>%
  html_node('a')%>% #여기서 nodes가 아니라 node로 해. 첫번째 a만 뽑으면 되자나
  html_attr('href')

url[2]




https://www.donga.com/news/search?p=1&query=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5&check_news=1&more=1&sorting=1&search_date=1&v1=&v2=&range=1
https://www.donga.com/news/search?p=16&query=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5&check_news=1&more=1&sorting=1&search_date=1&v1=&v2=&range=1
https://www.donga.com/news/search?p=31&query=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5&check_news=1&more=1&sorting=1&search_date=1&v1=&v2=&range=1

#여기
library(rvest)
url<-c()

for(i in seq(1,61,by=15)){
  url_text<- paste0('https://www.donga.com/news/search?p=',i,'&query=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5&check_news=1&more=1&sorting=1&search_date=1&v1=&v2=&range=1')
  html <- read_html(url_text)
  temp <- html_nodes(html,'p.tit')%>%
    html_node('a')%>%
    html_attr('href')
  url <- c(url,temp)
  Sys.sleep(1)
}

html <- read_html(url[4])

article <- html_node(html,'div.article_txt')

html_nodes(article,'div')

article%>%html_nodes('div')

library(stringr)
library(xml2)
# xml2::xml_remove() : 특정한 태그를 제거할때 사용하는 함수, 제거해서 바로 적용된다.

xml2::xml_remove(article%>%html_nodes('div'))
article%>%html_nodes('div')
article%>%html_text()
txt <- str_trim(article%>%html_text())
txt
str_extract(txt,'\\[서울=뉴시스\\]')
str_replace(txt,'\\[서울=뉴시스\\]','')

txt

"전남혁 기자 forward@donga.com"

str_extract(txt,'[^\\.]+[A-z0-9._]+@[A-z0-9._]+')

news <- c()

for(i in 1:length(url)){
  html<-read_html(url[i])
  article<-html_node(html,'div.article_txt')
  xml2::xml_remove(article%>%html_nodes('div'))
  #xml2::xml_remove(article%>%html_nodes('strong'))
  text<-article%>%html_text()
  text<-str_trim(text)
  text<-str_replace_all(text,'\\[서울=뉴시스\\]','')
  text<-str_replace_all(text,'[^\\.]+[A-z0-9._]+@[A-z0-9._]+','')
  text<-str_replace_all(text,'\n|\t|\r','')
  text<-str_squish(text)
  news<-c(news,text)
  Sys.sleep(1)
}

news[1]
news[4]
length(news)

write(news,'C:/data/donga_ai.txt')

ai<- readLines('C:/data/donga_ai.txt')
length(ai)
ai[1]
ai[4]

ai<-paste(ai,collapse=' ')
ai[1:10]
length(ai)
library(stringr)
library(KoNLP)

ai_pos<-SimplePos09(ai)
ai_pos
word<-str_match(ai_pos,'([가-힣]+)/N')[,2] #'[가-힣]+/N', [가-힣]+
word<-word[nchar(word)>=2]
word_df<-data.frame(table(word))
names(word_df)

library(wordcloud2)
wordcloud2(word_df)


#여기

[문제207] 네이버에서 영화리뷰정보를 수집한 후 데이터프레임으로 저장해주세요.
컬럼은 id, date, point, comment로 생성해주세요.

movie <- data.frame()

for(i in 1:10){
  html <- read_html(paste0('https://movie.naver.com/movie/point/af/list.naver?st=mcode&sword=194204&target=after&page=',i))
  
  
  #id추출
  id<-html_nodes(html,'td.num > a')%>%
    html_text()
  
  #날짜추출
  x<-html_nodes(html,'td.num')%>%
    html_text()
  
  date<-unlist(str_extract_all(x,'\\d{2}\\.\\d{2}\\.\\d{2}'))
  

  #z<-unlist(str_extract_all(x,'\\w{1,}\\*{1,}\\d{2}\\.\\d{2}\\.\\d{2}'))  
  #id <- unlist(str_extract_all(z,'\\w{1,}\\*{1,}'))
  #date <- unlist(str_extract_all(z,'\\d{2}\\.\\d{2}\\.\\d{2}'))
  
  #평점 추출 # 이거 평점 point 잘못 됐다 해결해봐
  point <- html_node(html,'div.list_netizen_score > em')%>%
    html_text()

  
  # 감상평 추출
  library(xml2)
  comment <- html_nodes(html,'td.title')
  
  #comment%>%html_nodes('a')
  #comment%>%html_nodes('div')
  
  
  xml_remove(comment%>%html_nodes('a'))
  xml_remove(comment%>%html_nodes('div'))
  comment <- comment%>%html_text()
  comment <- str_trim(comment)

  
  movie <- rbind(movie,data.frame(id=id,date=date,point=point,comment=comment))
  Sys.sleep(1)
}


View(movie)
library(KoNLP)
pos <-SimplePos22(movie$comment)

length(pos)

movie$tagging <- sapply(pos,function(x){paste(unlist(x),collapse=' ')})

noun <- sapply(movie$tagging, function(x){str_match_all(x,'[가-힣]+/NC')})

movie$tagging <- sapply(noun,function(x){paste(unlist(x)[,2],collapse=' ')})

str(movie)
movie$point<- as.integer(movie$point)
movie$evaluation<-ifelse(movie$point >= 8, '긍정','부정')

positive <- movie[movie$evaluation == '긍정','noun']
negative <- movie[movie$evaluation == '부정','noun']

library(wordcloud2)
wordcloud2(data.frame(table(unlist(strsplit(positive,' ')))))
wordcloud2(data.frame(table(unlist(strsplit(negative,' ')))))

p <- data.frame(table(unlist(strsplit(positive,' '))))
n <- data.frame(table(unlist(strsplit(negative,' '))))

names(p) <- c('word','freq')
names(n) <- c('word','freq')

p$sentiment <- 'positive'
n$sentiment <- 'negative'


library(reshape2)


# acast 쓰는 이유 다시
df_compar <- acast(df,word~sentiment, value.var='freq',fill=0)

library(wordcloud)
window(width=10,height=10)
wordcloud::comparison.cloud(df_compar)


■ css 선택자 사용하는 방식

library(rvest)

html <- read_html('https://movie.naver.com/movie/bi/mi/pointWriteFormList.naver?code=194204&type=after&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&page=1')
html

review <- html_nodes(html,'div.score_reple')%>%
  html_text()

#trimws(review)
#str_trim(review)

r#eview <- str_trim(review)
#gsub('\n|\t|\r',' ',review)
review<- str_replace_all(review,'\n|\t|\r',' ')
review<- gsub('^관람객',' ',review)
review<- gsub('신고$',' ', review)
review<- str_trim(review)
#gsub('\\s{2,}',' ',review)
review <- str_squish(review)

#닉네임(아이디) 날짜 찾기
x <- str_extract_all(review, '\\w+\\(.+\\)\\s\\d{4}\\.\\d{2}\\.\\d{2}\\s\\d{2}\\:\\d{2}')

id <- str_extract(x,'\\w+\\(.+\\)')
date <- str_extract(x,'\\d{4}\\.\\d{2}\\.\\d{2}\\s\\d{2}\\:\\d{2}')

id
date

review<- str_replace_all(review,'\\w+\\(.+\\)\\s\\d{4}\\.\\d{2}\\.\\d{2}\\s\\d{2}\\:\\d{2}','')
review<- str_replace_all(review,'[ㄱ-ㅎㅏ-ㅣ].,!?]',' ')

#str_replace_all(review,'[^가-힣]',' ')

point<- html_nodes(html, 'div.star_score > em')%>%
  html_text()

View(data.frame(id=id,date=date,point=point,review=review))


■ xpath 사용하는 방식

html <- read_html('https://movie.naver.com/movie/bi/mi/pointWriteFormList.naver?code=194204&type=after&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&page=1')
html

#id 추출
#절대 경로를 이용해서 검색

html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li[1]/div[2]/dl/dt/em[1]/a/span')
html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li[2]/div[2]/dl/dt/em[1]/a/span')


html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/dl/dt/em[1]/a/span') #내가 직접쓸 게 아니라, 웹 html에서 그부분 카피하면된다 xpath

/html/body/div/div/div[5]/ul/li[1]/div[2]/dl/dt/em[1]/a/span
/html/body/div/div/div[5]/ul/li[2]/div[2]/dl/dt/em[1]/a/span


# 상대경로를 이용해서 검색

html_nodes(html,xpath='//div[@class="score_reple"]/dl/dt/em[1]/a/span')%>%
  html_text()

#날짜 추출
html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/dl/dt/em[2]')

# 평점 추출
/html/body/div/div/div[5]/ul/li[1]/div[1]/em
/html/body/div/div/div[5]/ul/li[2]/div[1]/em

html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[1]/em')%>%
  html_text()

html_nodes(html,xpath='//div[@class="star_score"]/em')%>%
  html_text()

#리뷰 추출

#그냥 copy xpath -> 상대경로 나옴

//*[@id="_unfold_ment0"]/a
//*[@id="_filtered_ment_1"]
//*[@id="_filtered_ment_2"]

# copy full xpath -> 절대경로

/html/body/div/div/div[5]/ul/li[1]/div[2]/p/span[2]/span/a
/html/body/div/div/div[5]/ul/li[2]/div[2]/p/span[2]/text()
/html/body/div/div/div[5]/ul/li[3]/div[2]/p/span[2]/text()





review<-html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/p/span[2]')%>%
  html_text()

trimws(review)

#상대경로

review<-html_nodes(html,xpath='//div[@class="score_reple"]/p/span[2]')%>%
  html_text()
review

[문제207] 네이버에서 영화리뷰 정보를 수집한 후 데이터 프레임으로 저장해주세요.
컬럼은 id, date, point,comment로 생성해주세요

1) xpath 이용해서 데이터 수집
2) 수집한 내용을 형태소 분석
3) 평점을 기준으로 1~4 부정, 5~7 중립, 8~10 긍정으로 레이블을 생성해주세요.
4) 레이블을 기준으로 명사만 compare wordcloud를 생성해주세요.

1)

movie<-data.frame()

for(i in 1:10){
  html <- read_html(paste0('https://movie.naver.com/movie/bi/mi/pointWriteFormList.naver?code=194204&type=after&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&page=',i))
  
  #id 추출
  
  
  
  
  id<- html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/dl/dt/em[1]/a/span')%>%
    html_text()
  
  
  
  #날짜 추출
  date <- html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/dl/dt/em[2]')%>%
    html_text()
  
  
  # 평점 추출
  point <- html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[1]/em')%>%
    html_text()
  
  
  #리뷰 추출
  
  review <-html_nodes(html,xpath='/html/body/div/div/div[5]/ul/li/div[2]/p/span[2]')%>%
    html_text()
  
  movie<-rbind(movie,data.frame(id=id,date=date,point=point,review=review))
  Sys.sleep(1)
}

View(movie)

write.csv(movie,file="C:/Users/USER/Downloads/dataJMC/movie_raw.csv",row.names=F)

movie$review <- str_trim(movie$review)
#trimws(movie$review)
movie$review

unlist(str_extract_all(movie$review,'[ㄱ-ㅎㅏ-ㅣ\\.,!?]')) # 계속 이거 할때 한글 자모음이 안뽑히네..
unlist(str_extract_all(movie$review,'CG|cg'))

movie$review[grep('CG|cg',movie$review)]

movie$review <- str_replace_all(movie$review,'[ㄱ-ㅎㅏ-ㅣ\\.,!?]',' ')
movie$review <- str_replace_all(movie$review,'CG|cg','CG')
movie$review <- str_squish(movie$review)
movie$review

library(KoNLP)
useNIADic()

pos<-SimploePos22(movie$review)
pos

noun <- str_match_all(pos,"([가-힣]+)/NC")
noun[[1]][,2]
movie$review[1]

noun_unique <-sapply(noun,unique)
noun_unique[[1]][,2]

movie$noun <- sapply(noun,function(x) paste(unique(unlist(x)[,2][str_length(x[,2])>=2]),collapse=' '))

View(movie)

str(movie)
movie$point<-as.integer(movie$point)
str(movie)
movie$evaluation <- ifelse(movie$point>=8,'긍정',ifelse(movie$point>=5&movie$point<=7,'중립','부정'))

positive <- movie[movie$evaluation=='긍정','noun']
negative <- movie[movie$evaluation=='부정','noun']
neutral <- movie[movie$evaluation=='중립','noun']

head(sort(table(unlist(strsplit(positive, ' '))),decreasing=T),n=2)
head(sort(table(unlist(strsplit(negative, ' '))),decreasing=T),n=2)


positive_df <- data.frame(table(unlist(strsplit(positive, ' '))))
negative_df <- data.frame(table(unlist(strsplit(negative, ' '))))
neutral_df <- data.frame(table(unlist(strsplit(neutral, ' '))))

names(positive_df)<-c('word','freq')
names(negative_df)<-c('word','freq')
names(neutral_df)<-c('word','freq')

head(neutral_df)

positive_df$sentiment <- '긍정'
negative_df$sentiment <- '부정'
neutral_df$sentiment <- '중립'

df <- rbind(positive_df,neutral_df,negative_df)
head(df)
tail(df)

library(reshape2)
df_compar <- acst(df,word~sentiment,value.var='freq',fill=0)

head(df_compar)
tail(df_compar)

library(wordcloud)
windows(width=10,height=10)
wordcloud::comparison.cloud(df_compar,colors = c('red','blue','purple'),
                            title.color = c('red','blue','purple'),
                            title.bg.colors = 'white',
                            title.size=2,
                            scale=c(2,0,5))

library(dplyr)
df%>%
  group_by(sentiment)%>%
  mutate(rank = dense_rank(desc(freq)))%>%
  filter(rank<=2)%>%
  arrange(sentiment,rank)

df%>%
  group_by(sentiment)%>%
  mutate(rank = dense_rank(desc(freq)))%>%
  filter(rank==1)%>%
  arrange(sentiment,rank)%>%
  print(n=1000)

df%>%
  group_by(sentiment)%>%
  slice_max(freq)

■ JSON(JAVA OBJECT NOTATION)
- 자바스크립트에서 사용하는 객체 표기 방법을 기반으로 한다.
- 텍스트 데이터를 기반으로 한다.
- 다양한 소프트웨어와 프로그래밍 언어끼리 데이터를 교환할 때 많이 사용된다.

install.packages('jsonlite')
library(jsonlite)


#다음영화꺼 해봐. limit, offset 조정해서 뽑는거야

json1 <- fromJSON("https://comment.daum.net/apis/v1/posts/149671721/comments?parentId=0&offset=0&limit=100&sort=RECOMMEND&isInitial=true&hasNext=true")

str(json1)
j1<-json1[,c('rating','content','createdAt')]
View(json1[,c('rating','content','createdAt')])

json2 <- fromJSON("https://comment.daum.net/apis/v1/posts/149671721/comments?parentId=0&offset=101&limit=100&sort=RECOMMEND&isInitial=true&hasNext=true")

str(json2)
j2<-json2[,c('rating','content','createdAt')]
View(json2[,c('rating','content','createdAt')])

json3 <- fromJSON("https://comment.daum.net/apis/v1/posts/149671721/comments?parentId=0&offset=201&limit=100&sort=RECOMMEND&isInitial=true&hasNext=true")

str(json3)
j3<-json3[,c('rating','content','createdAt')]
View(json3[,c('rating','content','createdAt')])

View(rbind(j1,j2,j3))



■ selenium

- 웹브라우저를 



1. chromdriver 다운로드

chrome 버전에 맞게

2. selenium jar file
selenium-server-standalone-4.0.0-alpha-
  
  
3. 
install.packages('RSelenium')
library(RSelenium)

4.cmd 창에서 수행
java -Dwebdriver.chrome.driver="chromedriver.exe" -jar selenium-server-standalone-4.0.0-alpha-1.jar -port 7777


remdr <- remoteDriver(remoteServerAddr='localhost',port=7777,browserName='chrome')
remdr$open()
remdr$navigate("https://www.naver.com")
remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='end'))
remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='home'))
remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='down_arrow'))
remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='up_arrow'))


# 자동화로 네이버에서 강아지 이미지 뽑기
remdr$navigate("https://search.naver.com/search.naver?where=image")

id <- remdr$findElement(using='id',value='nx_query')
id$setElementAttribute('value','강아지')

btn <- remdr$findElement(using='class',value='bt_search')
btn$clickElement()


for(i in 1:5){
  remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='end'))
  Sys.sleep(2)
}
remdr$close()
#remdr$screenshot(display = T)
#remdr$close()


# 강아지 사진뽑는건 일반적 방법으로 이렇게 하면 안돼. selenium 안하면
library(rvest)

html <- read_html('https://search.naver.com/search.naver?sm=tab_hty.top&where=image&query=%EA%B0%95%EC%95%84%EC%A7%80&oquery=&tqi=hle8pwp0JXVsseRYvHKssssssHK-442585')

//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[1]/div/div[1]/a/img
//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[2]/div/div[1]/a/img
//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[3]/div/div[1]/a/img

img<-html_nodes(html,xpath='//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div/div/div[1]/a/img')%>%
  html_attr('src')

img


# 영화는 이렇게 되는데, 위에 강아지사진은 안되잖아 강아지는 selenium해야된다는 소리야
//*[@id="content"]/div[1]/div[2]/div[2]/a/img


html <- read_html('https://movie.naver.com/movie/bi/mi/basic.naver?code=191547')

//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[1]/div/div[1]/a/img
//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[2]/div/div[1]/a/img
//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div[3]/div/div[1]/a/img

img<-html_nodes(html,xpath='//*[@id="content"]/div[1]/div[2]/div[2]/a/img')%>%
  html_attr('src')

img

# 이렇게 위치정보만 알면 이미지 다운로드를 받을 수 있다.

download.file(img,destfile='C:/Users/USER/Downloads/dataJMC/1.jpg',mode='wb')

#xpath 없이 하는법
img<-html_nodes(html,'div.poster > a > img')%>%
  html_attr('src')

download.file(img[1],destfile='C:/Users/USER/Downloads/dataJMC/1.jpg',mode='wb')
download.file(img[2],destfile='C:/Users/USER/Downloads/dataJMC/2.jpg',mode='wb')


#selenium을 이용해서 네이버 이미지 검색을 한 후 다운로드

remdr <- remoteDriver(remoteServerAddr='localhost',port=7777,browserName='chrome')
remdr$open()
remdr$navigate("https://search.naver.com/search.naver?where=image")

id <- remdr$findElement(using='id',value='nx_query')
id$setElementAttribute('value','강아지')

btn <- remdr$findElement(using='class',value='bt_search')
btn$clickElement()


for(i in 1:5){
  remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='end'))
  Sys.sleep(2)
}


source <- remdr$getPageSource()[[1]]
html <- read_html(source)
remder$close()

html

img<-html_nodes(html,xpath='//*[@id="main_pack"]/section[2]/div/div[1]/div[1]/div/div/div[1]/a/img')%>%
  html_attr('src')

img
img[1:5]

for(i in 1:5){
  download.file(img[i],destfile = paste0('c:/image/dog',i,'.jpg'),mode='wb')
}


■ try

예외사항
- 실행 중에 발생한 오류
- 예외사항이 발생했을 때 처리하는 기능

lst <- list(x=10,y='20',z=30)
lst

for(i in lst){
  try(print(100/i),silent=T) # silent = T : 오류난 부분 메시지 처리 안하고 넘어가기
}

img
x<-img[c(1,2,537,4,5)]

for(i in 1:5){
  try(download.file(x[i],destfile = paste0('c:/image/dog_',i,'.jpg'),mode='wb'),silent=T)
}


#오류 나는 부분 넘어가는데, 오류나는 애를 별도로 관리하고 싶을 때
x<-img[c(1,2,537,4,5)]
error_files <- c()

for(i in 1:5){
  tryCatch(download.file(x[i],destfile = paste0('c:/image/dog_',i,'.jpg'),mode='wb'),
           error=function(arg) error_files <<- c(error_files,x[i])) # 함수 바깥에 있는 변수(글로벌변수)에 append하려면 <<- 해야돼. <-는 로컬변수임
}

error_files


img
error_files <- c()

for(i in 1:length(img)){
  tryCatch(download.file(img[i],destfile = paste0('c:/image/dog_',i,'.jpg'),mode='wb'),
           error=function(arg) error_files <<- c(error_files,img[i])) # 함수 바깥에 있는 변수(글로벌변수)에 append하려면 <<- 해야돼. <-는 로컬변수임
}
error_files


[문제208] 다음 이미지 사이트에서 검색어를 입력한 후 이미지 url 수집한 후 이미지 파일을 저장해주세요.

//*[@id="imgList"]/div[1]/a/img
//*[@id="imgList"]/div[2]/a/img

remdr <- remoteDriver(remoteServerAddr='localhost',port=7777,browserName='chrome')
remdr$open()
remdr$navigate("https://search.daum.net/search?w=img&nil_search=btn&DA=NTB&enc=utf8&q=")

id <- remdr$findElement(using='id',value='q')
id$setElementAttribute('value','샤킬오닐')

btn <- remdr$findElement(using='id',value='daumBtnSearch')
btn$clickElement()

for(i in 1:5){
  remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='end'))
  Sys.sleep(2)
}

# 다음에서는 밑으로 내리다 보면 더보기를 눌러야 더 나오는 상황이 생겨
for(i in 1:5){
  webelem <- remdr$findElement(using='xpath',value='//*[@id="imgColl"]/div[5]/a[1]')
  webelem$clickElement()
  Sys.sleep(2)
}

source <- remdr$getPageSource()[[1]]
html <- read_html(source)
remdr$close()

html

img1<-html_nodes(html,xpath='//*[@id="imgList"]/div/a/img')%>%
  html_attr('src')

error_files1 <- c()
for(i in 1:length(img1)){
  tryCatch(download.file(img1[i],destfile = paste0('c:/image1/shaq_',i,'.jpg'),mode='wb'),
           error=function(arg) error_files1 <<- c(error_files1,img1[i]))
}
error_files1


[문제209] 중앙일보에서 '인공지능' 뉴스기사에 대한 url수집을 해주세요

remdr <- remoteDriver(remoteServerAddr='localhost',port=7777,browserName='chrome')
remdr$open()
remdr$navigate("https://www.joongang.co.kr/search/news?keyword=%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5")


# 스크롤 내리고 더보기 누르는 작업 이렇게

for(j in 1:5){
  for(i in 1:80){
    remdr$findElement(using='css',value='body')$sendKeysToElement(list(key='down_arrow'))
  }
  remdr$findElement(using='xpath',value='//*[@id="container"]/section/div/section/div/a')$clickElement()
}


source <- remdr$getPageSource()[[1]]
html <- read_html(source)
remdr$close()

html

url <-html_nodes(html,xpath='//*[@id="container"]/section/div/section/ul/li/div[2]/h2/a')%>%
  html_attr('href')


[문제210] 다나와에서 apple 노트북 정보를 수집해서 데이터프레임으로 저장해주세요

library(RSelenium)
library(rvest)
library(xml2)

remdr <- remoteDriver(remoteServerAddr='localhost',port=7777,browserName='chrome')
remdr$open()
remdr$navigate("http://prod.danawa.com/list/?cate=112758&15main_11_02")

btn1 <- remdr$findElement(using='xpath',value='//*[@id="dlMaker_simple"]/dd/div[2]/button[1]')
btn1$clickElement()

btn2 <- remdr$findElement(using='id',value='searchMaker1452')
btn2$clickElement()


apple<- data.frame()
for(page in 1:3){
  source <- remdr$getPageSource()[[1]]
  html <- read_html(source)
  
  #ul <- html_node(html, xpath='//*[@id="productListArea"]/div[4]/ul')
  
  ul <- html_node(html,'div#productListArea > div.main_prodlist.main_prodlist_list > ul.product_list')
  
  xml_remove(ul%>%html_node('li.product-pot'))
  
  # 제품이름
  prod_name <- html_nodes(ul,'li > div > div.prod_info > p > a')%>%html_text()
  prod_name <- trimws(prod_name)
  
  # 제품정보
  prod_info <- html_nodes(ul, 'div.spec_list')%>%html_text()
  prod_info <- trimws(prod_info)
  prod_info <- gsub('/','.',trimws(prod_info))
  
  # 제품가격
  price_ul <- html_nodes(ul,'div.prod_pricelist > ul')
  
  lst <- list()
  for(j in price_ul){
    price_li <- html_nodes(j, 'li')
    temp <- c()
    for(i in price_li){
      spec<- html_node(i,'div>p.memory_sect')%>%html_text()
      spec<- trimws(spec)
      price<- html_node(i,'p.price_sect > a > strong')%>% html_text()
      temp <- c(temp,paste('스펙 :',spec,'가격 :',price))
    }
    lst <- append(lst,list(temp))
  }
  
  spec_price <- sapply(lst,function(x) paste(x,collapse=' / '))
  apple <- rbind(apple,data.frame(prod_name=prod_name,prod_info=prod_info,prod_price = spec_price))
  remdr$findElement(using='css',
                     value=paste0('div.number_wrap > a:nth-child(',page+1,')'))$clickElement()
  Sys.sleep(5)
}

remdr$close()

View(apple)


■ data mining
-수많은 데이터 중 의미있는 정보를 추출해 내는 분석과정

■ text mining
-텍스트로부터 의미있는 정보를 추출하는 데이터 분석 기법, text analytics, text analysis 라고 함

활용
- 문서분류
- 문서나 단어 간의 연관성 분석
- 감성 분석

■ corpus(말뭉치)
- 언어 연구를 위해 텍스트를 컴퓨터가 읽을 수 있는 형태로 모아 놓은 언어 집합

■ 텍스트 마이닝을 하기 위한 단계
문서(비정형데이터) -> corpus -> 구조화된 문서  -> 분석

install.packages('tm')
library(tm)

data <- readLines('C:/Users/USER/Downloads/dataJMC/Mommy_I_love_you.txt')
data

class(data)

# character(vector) -> corpus로 변환

corp1 <- VCorpus(VectorSource(data))
class(corp1)

# 코퍼스 요약정보
corp1
inspect(corp1)
inspect(corp1[[1]])

#문서확인
as.character(inspect(corp1[[1]]))
as.character(inspect(corp1[[2]]))

lapply(corp1,as.character)
sapply(corp1,as.character)

corp1[[1]]$content
lapply(corp1,content)
?content

as.vector(unlist(lapply(corp1,content)))
as.vector(sapply(corp1,content))

paste(as.vector(sapply(corp1,content)),collapse=' ')

#메타정보 확인
corp1[[1]]$meta
meta(corp1[[1]])
lapply(corp1,meta)
sapply(corp1,meta)

meta(corp1[[1]],tag='author')
meta(corp1[[1]],tag='id')
meta(corp1[[1]],tag='datetimestamp')

meta(corp1[[1]],tag='author',type='local') <- 'james'
meta(corp1[[1]],tag='author')

lapply(corp1,meta)
meta(corp1,tag='author',type='local') <- paste0(1:9,'문서')
lapply(corp1,meta)


meta(corp1,tag='author',type='local') <- NA
lapply(corp1,meta)

meta(corp1,tag='author',type='local') <- NULL #항목 자체를 삭제
lapply(corp1,meta)

# tm 패키지에서 제공하는 정제작업 함수
getTransformations()

#stripWhitespace() : 연속되는 여러개의 공백을 하나의 공백으로 변환하는 함수

corp2 <- tm_map(corp1, stripWhitespace)
corp1[[1]]$content
corp2[[1]]$content
lapply(corp2,content)
class(corp1)
#removePunctuation : 특수문자 제거
corp2<-tm_map(corp2, removePunctuation)
lapply(corp2,content)

#removeNumbers : 숫자 제거
corp2 <- tm_map(corp2,removeNumbers)
lapply(corp2,content)

# 일반함수를 tm_map에서 사용할 떼는 content_transformer와 함께 사용해야 한다.
corp2 <- tm_map(corp2,content_transformer(tolower))
lapply(corp2,content)

corp2 <- tm_map(corp2,content_transformer(trimws))
lapply(corp2,content)

#불용어
tm::stopwords()
tm::stopwords('english')
tm::stopwords('en')
tm::stopwords('smart')

tm::stopwords()[tm::stopwords()=='me']
tm::stopwords()[tm::stopwords()=='makes']

stopword2 <- c(tm::stopwords(),'makes','want')
stopword2

#removeWords : 단어를 제거하는 함수, 불용어 리스트를 쓰면 불용어를 없애는게 된다.
tm_map(corp2,removeWords,tm::stopwords())
corp2 <- tm_map(corp2,removeWords,stopword2)
lapply(corp2,content)

# 어근통일화(stemming)

library(SnowballC)
install.packages('SnowballC')

corp2 <- tm_map(corp2,stemDocument)
lapply(corp2,content)

mommi -> mommy 수정
gsub('mommi','mommy', 원시데이터변수)

corp2 <- tm_map(corp2,content_transformer(function(x) gsub('mommi','mommy',x)))
lapply(corp2, content)

■ 텍스트 구조화
- Bag-of-Word(단어 주머니)에 의한 텍스트 구조화
- 텍스트를 단어의 집합으로 표현
- 단어의 순서나 문법은 무시되고 단어의 빈도수만을 이용
- 문서-용어 행렬(document-term matrix)은 단어주머니로 부터 비구조화된 텍스트를 구조화된 데이터로 변환


ex)문서-용어 행렬(document- term matrix)
      mommy love want say thank happy everyday give
문서1   1    1    0    1    1     0       0     0
문서2   0    1    0    0    0     0       1     1

# corpus -> 문서-용어행렬로 변환

corp1_dtm <- DocumentTermMatrix(corp1)
corp1_dtm
inspect(corp1_dtm)

corp2_dtm <- DocumentTermMatrix(corp2)
corp2_dtm
inspect(corp2_dtm)

# DTM안의 단어수
nTerms(corp2_dtm)
nTerms(corp1_dtm)

# 단어
Terms(corp2_dtm)
Terms(corp1_dtm)

# 문서수
nDocs(corp2_dtm)

# 문서 이름
Docs(corp2_dtm)
rownames(corp2_dtm)

# 일부분만 확인
inspect(corp2_dtm)
inspect(corp2_dtm[1:3,1:5])

termfreq <- colSums(as.matrix(corp2_dtm))
termfreq
names(termfreq)

library(wordcloud)
wordcloud(words=names(termfreq),freq=termfreq,
          min.freq=1,random.order=F,random.color=T,
          colors=brewer.pal(9,'Blues'))

termfreq_df <- data.frame(word=names(termfreq),freq=termfreq)
library(wordcloud2)

wordcloud2(termfreq_df)

library(ggplot2)
ggplot(data=termfreq_df,aes(x=reorder(word,freq),y=freq,fill=word))+
  geom_col(show.legend = F)+
  coord_flip()

[문제211] 미국 바이든 대통령 취임사 전문을 수집하여 말뭉치로 변환한 후
정제작업을 통해 document-term matrix를 생성한 후 시각화 해주세요.

library(rvest)
html <- read_html('https://www.whitehouse.gov/briefing-room/speeches-remarks/2021/01/20/inaugural-address-by-president-joseph-r-biden-jr/')
html
biden <- html_nodes(html,xpath='//*[@id="content"]/article/section/div/div/p')%>%html_text()
head(biden)
length(biden)

biden <- biden[c(-1,-2,-211,-212)]

biden <- paste(biden,collapse=' ')

# 원시 텍스트 꼭 따로 저장해놓기
write(biden,file='C:/Users/USER/Downloads/dataJMC/')
readLines

corpus.biden <- VCorpus(VectorSource(biden))
inspect(corpus.biden)

lapply(corpus.biden,content)

#코퍼스 파일 저장
writeCorpus(corpus.biden,path='C:/Users/USER/downloads/dataJMC',filenames = 'corpus_biden.txt')

# 특정한 디렉토리에 있는 파일 조회
list.files(path='C:/Users/USER/Downloads/dataJMC',pattern='\\.txt')

#파일을 코퍼스로 읽어 오는 방법
biden_corpus <- Corpus(URISource('C:/Users/USER/Downloads/dataJMC)/corpus_biden.txt'))

#소문자 변환
biden_corpus <- tm_map(corpus.biden,content_transformer(tolower))
lapply(biden_corpus,content)

#특수문자 오른쪽과 왼쪽의 문자들 체크
"i'm"
library(stringr)
lapply(tm_map(biden_corpus,content_transformer(function(x) str_extract_all(x,'[A-z]+[[:punct:]]+[A-z]+'))),content)

lapply(biden_corpus,function(x) str_extract_all(x$content,'[A-z]+[[:punct:]]+[A-z]+'))



#불용어 제거

biden_corpus <- tm_map(biden_corpus,removeWords,stopwords())
lapply(biden_corpus,function(x) str_extract_all(x$content,'[A-z]+[[:punct:]]+[A-z]+'))
tm::stopwords()

biden_corpus <- tm_map(biden_corpus,
       content_transformer(function(x) gsub('doesn’t|don’t|can’t',' ',x)))

biden_corpus <- tm_map(biden_corpus,
                       content_transformer(function(x) gsub('co-workers','coworkers',x)))

biden_corpus <- tm_map(biden_corpus,
                       content_transformer(function(x) gsub('’s',' ',x)))

biden_corpus <- tm_map(biden_corpus,
                       content_transformer(function(x) gsub('[[:punct:]]+',' ',x)))

lapply(biden_corpus,function(x) str_extract_all(x$content,'[A-z]+[[:punct:]]+[A-z]+'))

lapply(biden_corpus,function(x) str_extract_all(x$content,'[[:punct:]]+'))

# 숫자 체크
lapply(biden_corpus,function(x) str_extract_all(x$content,'[^0-9\\s]*\\d+\\W\\d*'))
lapply(biden_corpus,function(x) str_extract_all(x$content,'<[A-z0-9\\+]+>'))

#<u+2013> 제거
biden_corpus <- tm_map(biden_corpus,
                       content_transformer(function(x) gsub('<[A-z0-9\\+]+>',' ',x)))
# iden_corpus<-tm_map(biden_corpus, removePunctuation)
# biden_corpus <- tm_map(biden_corpus,removeNumbers)

# 연속되는 2개 이상의 공백을 하나의 공백으로 변환
biden_corpus <- tm_map(biden_corpus,stripWhitespace)
lapply(biden_corpus,content)

biden_dtm <- DocumentTermMatrix(biden_corpus)
biden_dtm
termfreq <- colSums(as.matrix(biden_dtm))

library(wordcloud)
wordcloud(words=names(termfreq),freq=termfreq,
          min.freq=1,random.order=F,random.color=T,
          colors=brewer.pal(9,'Blues'))

termfreq_df <- data.frame(word=names(termfreq),freq=termfreq)
library(wordcloud2)

wordcloud2(termfreq_df)

library(ggplot2)
ggplot(data=termfreq_df,aes(x=reorder(word,freq),y=freq,fill=word))+
  geom_col(show.legend = F)+
  coord_flip()

top_50 <- head(termfreq_df[order(termfreq_df$freq,decreasing = T),],n=50)

ggplot(data=top_50,aes(x=reorder(word,freq),y=freq,fill=word))+
  geom_col(show.legend = F)+
  coord_flip()


biden_dtm
Terms(biden_dtm)

#lowfreq : 최소 출현 횟수(빈도수)
termfreq_df[termfreq_df$freq>=10,'word']
tm::findFreqTerms(biden_dtm,lowfreq=10)

#highfreq : 최대 출현 횟수(빈도수)
termfreq_df[termfreq_df$freq<=10,'word']
tm::findFreqTerms(biden_dtm,highfreq = 10)

termfreq_df[termfreq_df$freq>=10 & termfreq_df$freq<=15,]

tm::findFreqTerms(biden_dtm,lowfreq=10,highfreq=15)


■ 감성분석
감성분석(sentiment analysis) 또는 opinion mining은 텍스트에 내재되어있는
감정적 상태나 주관적 평가를 식별하고 추출하는 텍스트 분석 기법

install.packages('tidytext')
install.packages('textdata')
library(tidytext)
library(textdata)



tidytext::sentiments%>%
  head()

tidytext::sentiments%>%
  tail()

#bing
# positive, negative 분류
get_sentiments('bing')

get_sentiments('bing')$word
unique(get_sentiments('bing')$sentiment)

#afinn -5점(부정) ~ +5점(긍정) 범위의 점수로 표현
get_sentiments('afinn')

get_sentiments('afinn')$word
unique(get_sentiments('afinn')$value)

#nrc
# 10개의 감성 상태 분류

"trust"        "fear"         "negative"     "sadness"     
 "anger"        "surprise"     "positive"     "disgust"     
 "joy"          "anticipation"
 
get_sentiments('nrc')

get_sentiments('nrc')$word
unique(get_sentiments('nrc')$sentiment)

#loughran
#6가지 감성상태 분류 ( 금융 분야의 텍스트에 적합 )
 "negative"     "positive"     "uncertainty"  "litigious"   
 "constraining" "superfluous"
 
get_sentiments('loughran')

get_sentiments('loughran')$word
unique(get_sentiments('loughran')$sentiment)

biden_sentiment <- merge(termfreq_df,get_sentiments('bing'),by='word')
head(biden_sentiment)
aggregate(word ~ sentiment,biden_sentiment,length)

biden_sentiment <- merge(termfreq_df,get_sentiments('nrc'),by='word')
head(biden_sentiment)
aggregate(word ~ sentiment,biden_sentiment,length)

[문제212] 미국 트럼프 대통령 취임사 전문을 수집하여 말뭉치로 변환한 후
정제작업을 통해 document-term matrix를 생성한 후 시각화 해주세요. 
감성분석도 수행하세요.

html <- read_html('https://www.politico.com/story/2017/01/full-text-donald-trump-inauguration-speech-transcript-233907')
html

trump <- html_nodes(html,xpath='//*[@id="main"]/div[2]/div/article/div[1]/section[2]/div/div')%>%
  html_text()

trump <- paste(trump,collapse=' ')
trump

trump_corpus <- VCorpus(VectorSource(trump))
lapply(trump_corpus,content)

# 소문자 변환
trump_corpus <- tm_map(trump_corpus,content_transformer(tolower))
lapply(trump_corpus,content)

# 불용어 제거
trump_corpus <- tm_map(trump_corpus,removeWords,stopwords())
lapply(trump_corpus,content)

# 특수문자 제거
trump_corpus <- tm_map(trump_corpus,removePunctuation)
lapply(trump_corpus,content)

# 숫자 제거
trump_corpus <- tm_map(trump_corpus,removeNumbers)
lapply(trump_corpus,content)

# 연속되는 공백 제거
trump_corpus <- tm_map(trump_corpus,stripWhitespace)
lapply(trump_corpus,content)

trump_dtm <- DocumentTermMatrix(trump_corpus)
trump_freq <- colSums(as.matrix(trump_dtm))

trump_freq_df <- data.frame(word=names(trump_freq), freq=trump_freq)
head(trump_freq_df)

trump_sentiment <- merge(trump_freq_df,get_sentiments('bing'),by='word')





[문제213] 트럼프, 바이든 긍정단어를 이용해서 compare wordcloud 생성해주세요.

biden_sentiment

trump_df <- trump_sentiment[trump_sentiment$sentiment == 'positive',]
biden_df <- biden_sentiment[biden_sentiment$sentiment == 'positive',]

trump_df$president <- 'trump'
biden_df$president <- 'biden'

trump_df$sentiment <- NULL
biden_df$sentiment <- NULL

trump_biden <- rbind(trump_df,biden_df)
trump_biden

library(reshape2)
trump_biden_compar <- acast(trump_biden,word~president,value.var='freq',fill=0)

library(wordcloud)
comparison.cloud(trump_biden_compar)

Sys.getenv('JAVA_HOME')

library(rJava)

install.packages('openNLP')
library(openNLP)
library(NLP)

text<-"R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing."

# annotate는 ggplot에도 있으니까 패키지 이름 꼭 써야돼

# NLP::annotate() : 텍스트 데이터에 주석 작업을 수행하는 함수
# openNLP::Maxent_Sent_Token_Annotator(): 문장단위 주석작업을 수행하는 함수
# openNLP::Maxent_Word_Token_Annotator(): 단어 단위를 주석작업 하는 함수
# openNLP::Maxent_POS_Tag_Annotator(): 품사태깅하는 함수

text_sent <- NLP::annotate(text,openNLP::Maxent_Sent_Token_Annotator())
text_word <- NLP::annotate(text,openNLP::Maxent_Word_Token_Annotator(),text_sent)
postag <- NLP::annotate(text,openNLP::Maxent_POS_Tag_Annotator(),text_word)
postag

id type     start end features
1 sentence     1 153 constituents=<<integer,23>>
  2 word         1   1 POS=NN #단수명사
3 word         3   4 POS=VBZ # 3인칭 현재형 단수 동사
4 word         6   6 POS=DT #한정사
5 word         8  18 POS=NN
6 word        20  27 POS=NN
7 word        29  31 POS=CC # 등위접속사
8 word        33  36 POS=JJ # 형용사
9 word        38  45 POS=NN
10 word        47  57 POS=NN
11 word        59  61 POS=IN #전치사
12 word        63  73 POS=JJ
13 word        75  83 POS=NN
14 word        85  87 POS=CC
15 word        89  96 POS=NNS #복수명사
16 word        98 106 POS=VBN #과거 진행형
17 word       108 109 POS=IN
18 word       111 113 POS=DT
19 word       115 115 POS=NN
20 word       117 126 POS=NNP # 단수대명사
21 word       128 130 POS=IN
22 word       132 142 POS=NNP
23 word       144 152 POS=NNP
24 word       153 153 POS=.

NNPS : 복수대명사
JJR : 비교급 형용사
JJS : 최상급 형용사
MD : 조동사

[문제 214] text 변수에 있는 문장에서 명사NN, 복수명사NNS, 단수대명사NNP를 추출해주세요.

class(postag)

postag_df <- data.frame(postag[postag$type=='word'])
str(postag_df)

postag_df$features <- unlist(postag_df$features)

postag_df

pos_nn <- postag_df[postag_df$features %in% c('NN','NNS','NNP'),]
pos_nn

substr(text,1,1)
substr(text,8,18)

substr(text,pos_nn$start[1],pos_nn$end[1])
substr(text,pos_nn$start[2],pos_nn$end[2])
substr(text,pos_nn$start[3],pos_nn$end[3])


word_nn <- c()
for(i in 1:NROW(pos_nn)){
  word_nn <- c(word_nn,substr(text,pos_nn$start[i],pos_nn$end[i]))
}
word_nn

[문제215] 미국 바이든 대통령 취임사 전문에서 명사(NN), 복수명사(NNS), 단수대명사(NNP),
복수대명사(NNPS),형용사(JJ), 비교급형용사(JJR), 최상급 형용사(JJS)  추출해서 시각화 해주세요.


biden_sent <- NLP::annotate(biden,openNLP::Maxent_Sent_Token_Annotator())
biden_word <- NLP::annotate(biden,openNLP::Maxent_Word_Token_Annotator(),biden_sent)
postag <- NLP::annotate(biden,openNLP::Maxent_POS_Tag_Annotator(), biden_word)
postag

postag_df <- data.frame(postag[postag$type=='word'])
str(postag_df)

postag_df$features <- unlist(postag_df$features)

postag_df

pos_nn <- postag_df[postag_df$features %in% c('NN','NNS','NNPS'),]
pos_nn

substr(text,1,1)
substr(text,8,18)

substr(text,pos_nn$start[1],pos_nn$end[1])
substr(text,pos_nn$start[2],pos_nn$end[2])
substr(text,pos_nn$start[3],pos_nn$end[3])


word_nn <- c()
for(i in 1:NROW(pos_nn)){
  word_nn <- c(word_nn,substr(biden,pos_nn$start[i],pos_nn$end[i]))
}
word_nn

head(sort(table(word_nn),decreasing=T))

word_biden <- c(word_nn,word_jj)

grep('\\w+\\’s$',word_biden,value=T)

word_biden <- gsub('’s$','',word_biden)
grep('\\w+\\’s$',word_biden,value=T)

word_biden_freq <- table(word_biden)
library(wordcloud)
wordcloud(words=names(word_biden_freq),freq=word_biden_freq)

library(wordcloud2)

word_biden_df <- data.frame(word_biden_freq)
wordcloud2(word_biden_df)

nn_df <- data.frame(table(word_nn))
jj_df <- data.frame(table(word_jj))

names(nn_df) <- c('word','freq')
names(jj_df) <- c('word','freq')

nn_df$pos <- 'noun'
jj_df$pos <- 'adjective'

nn_jj_df <- rbind(nn_df,jj_df)
head(nn_jj_df)

library(reshape2)
nn_jj_compar <- acast(nn_jj_df,word~pos,value.var = 'freq',fill=0)
head(nn_jj_compar)
comparison.cloud(nn_jj_compar)

[문제216] 문재인 대통령의 취임사, 명사만 추출 시각화

library(rvest)
html <- read_html('https://www1.president.go.kr/articles/517')

text<- html_nodes(html,xpath='//*[@id="cont_view"]/div/div/div[1]/div[3]/div')%>%
  html_text()
text<-text[text != '']
text<-paste(text,collapse=' ')

library(rJava)
library(stringr)
library(KoNLP)
useNIADic()

extractNoun(text)

pos <- SimplePos09(text)

?str_match
as.vector(na.omit(str_match(pos,'([가-힣]+)/N')[,2]))

#str 안되면,
as.vector(na.omit(substr(pos,1,str_locate(pos,'/N')-1)))




nn.words <- function(doc){
  doc<-as.character(doc)
  pos <- SimplePos09(doc)
  as.vector(na.omit(str_match(pos,'([가-힣]+)/N')[,2]))
}

nn.words(text)

Sys.getlocale()
Sys.setlocale("LC_CTYPE", ".1251")
Sys.setlocale("LC_ALL")

word <- nn.words(text)
word[nchar(word)==1]

# 2글자 이상인 단어만 추출
word[nchar(word)>=2]

word <- Filter(function(x) nchar(x) >= 2, word)

grep('대통령',word,value=T)

#불용어 단어 제외
stop_words <- c('문재인','문재인정부','대통령','대통령의','대통령선거')

word_new <- c()
word[1]
! word[1] %in% stop_words

for(i in word){
  if(! i %in% stop_words){
    word_new <- c(word_new,i)
  }
}

library(wordcloud2)
wordcloud2(head(sort(table(word_new),decreasing=T),n=10))


# 명사를 기준으로 말뭉치를 생성해주세요.

word_text <- paste(word_new, collapse=' ')
word_text

library(tm)
library(NLP)

corpus <- VCorpus(VectorSource(word_text))
inspect(corpus)
lapply(corpus,content)
corpus_dtm <- DocumentTermMatrix(corpus)
inspect(corpus_dtm)
as.matrix(corpus_dtm)
colSums(as.matrix(corpus_dtm))
termfreq <- colSums(as.matrix(corpus_dtm))
freq_df <- data.frame(termfreq)
head(freq_df)
freq_df$word <- rownames(freq_df)
rownames(freq_df)<-NULL
head(freq_df)
freq_df <- freq_df[,c(2,1)]

wordcloud2(freq_df)

nn.words <- function(doc){
  doc<-as.character(doc)
  pos <- SimplePos09(text)
  as.vector(na.omit(str_match(pos,'([가-힣]+)/N')[,2]))
}

stop_words <- c('문재인','문재인정부','대통령','대통령의','대통령선거')

text
moon_corpus <- VCorpus(VectorSource(text))
moon_corpus[[1]]$content
lapply(moon_corpus,content)

moon_dtm <- DocumentTermMatrix(moon_corpus,
                               control=list(tokenize=nn.words,
                                            wordLengths=c(2,Inf),
                                            stopwords=stop_words,
                                            removeNumbers=T,
                                            removePunctuation=T))
inspect(moon_dtm)

head(sort(colSums(as.matrix(moon_dtm)),decreasing=T))

moon_termfreq <- colSums(as.matrix(moon_dtm))
moon_df <- data.frame(word=names(moon_termfreq),freq=moon_termfreq)
head(moon_df)
wordcloud2(moon_df)

pos <- read.csv('C:/data/pos_pol_word.txt',encoding='UTF-8',header=F) 
pos

neg <- read.csv('C:/data/neg_pol_word.txt',encoding='UTF-8',header=F) 
neg

names(pos) <- 'word'
names(neg) <- 'word'

pos$sentiment <- '긍정'
neg$sentiment <- '부정'

k_sentiment_dic <- rbind(pos,neg)

write.csv(k_sentiment_dic,file='C:/data/k_sentiment_dic.txt')

moon_sentiment <- merge(moon_df,k_sentiment_dic,by='word')
head(moon_sentiment)
aggregate(word~sentiment,moon_sentiment,length)

# 단어를 기반으로
moon_word_dtm <- DocumentTermMatrix(moon_corpus)
moon_wordfreq <- colSums(as.matrix(moon_word_dtm))
moon_word_df <- data.frame(word=names(moon_wordfreq),freq=moon_wordfreq)

moon_word_sentiment <- merge(moon_word_df,k_sentiment_dic,by='word')
head(moon_word_sentiment)
aggregate(word~sentiment,moon_word_sentiment,length)

■ ngram(s)
- 연이어 사용된 n개의 단어를 엔그램(ngram)이라고 한다.
- 1-gram : 하나의 단어
  2-gram : bigram 2 단어
  3-gram : trigram 3단어
  4-gram..
- 연이어 사용되는 단어의 쌍을 분석
예) 죽는날 까지 하늘을 우러러 한점 부끄럼이 없기를 잎새에
죽는날 까지
까지 하늘을
하늘을 우러러
우러러 한점
한점 부끄럼이
부끄럼이 없기를

install.packages('RWeka')
library(RWeka)

RWeka::NGramTokenizer()

Tokenizer <- function(x) RWeka::NGramTokenizer(x,RWeka::Weka_control(min=1,max=2))

moon_word_dtm <- DocumentTermMatrix(moon_corpus,
                                    control=list(tokenizer='words'))
inspect(moon_word_dtm)

moon_word_dtm <- DocumentTermMatrix(moon_corpus,
                                    control=list(tokenizer=Tokenizer))


moon_wordfreq <- colSums(as.matrix(moon_word_dtm))
moon_word_df <- data.frame(word=names(moon_wordfreq),freq=moon_wordfreq)


moon_word_sentiment <- merge(moon_word_df,k_sentiment_dic,by='word')
head(moon_word_sentiment)
aggregate(word~sentiment,moon_word_sentiment,length)



■ 머신러닝(machine learning)
- 인간의 학습 능력과 같은 기능을 컴퓨터가 하게 만드는 기술
- 인공지능(AI) 연구분야의 하나이다.
- 인공지능이란 인간이 원래 가지고 있는 지적 능력을 컴퓨터가 하게 만드는 기술이다.
- 분류 : 주어진 데이터 분류
- 예측 : 과거의 수치를 기반으로 미래의 수치 예측
- 군집 : 데이터를 비슷한 집합으로 모으는 작업


지도학습(supervised learning)
- 레이블(정답)이 달려 있고 정해져 있는 데이터를 가지고 학습
- 이미지학습(개,고양이), 스팸,햄, 긍정,부정, 시험성적예측, 로또예측, 주가예측
- 분류, 예측

비지도학습(unsupervised learning)
- 레이블(정답)이 없는 데이터를 학습을 통해 군집한다.
- 유사한 뉴스를 그룹으로 모으는 학습

문장                      레이블(정답)
오늘은 행복하다.             긍정


■ 확률
- 어떤 사건이 일어날 가능성 수치
- 0 ~ 1 사이의 숫자로 표현한 값

# 한계확률, 주변확률 (marginal probability)
- 아무런 조건이 없는 상태에서 A라는 사건이 발생할 확률
- P(A)

<<교차표>>

만족          만족    보통         불만족     행의합      한계확률
남성           2       1             1          4           0.4
여성           0       4             2          6           0.6
열의합         2       5             3          10                      
한계확률       0.2     0.5           0.3

# 결합확률(join probability)
- 두개 이상의 사건이 동시에 발생할 가능성을 나타내는 확률
- 사건 A와 사건 B가 동시에 발생할 확률
- P(A∩B)

# 조건부확률(conditional probability)
- 이미 하나의 사건이 발생한 상태에서 또 다른 사건이 발생할 가능을 나타내는 확률
- 남성이라는 조건하에서 보통일 확률?
  
  P(A|B) = P(A ∩ B )/  P(B)


■ 나이브 베이즈(Naive Bayes)
- 데이터를 나이브(단순)하게 독립적인 사건으로 가정하고 이 독립사건들을
베이즈 이론에 대입시켜 가장 높은 확률의 레이블로 분류하는 알고리즘
- 사전에 알고 있는 정보(예측변수)를 바탕으로 어떤 사건(결과변수)이 발생할 확률을 계산
- 사건에 해당하는 결과변수는 범주형변수이어야하며 예측변수는 범주형 변수를 가정한다.



                P(스팸∩복권)      P(복권|스팸) * P(스팸)          P(복권|스팸) * P(스팸)
P(스팸|복권) =  ------------  =   -----------------         = -----------------------------
                  P(복권)             P(복권)                   P(복권|스팸)*P(스팸) + P(복권|햄)*P(햄)


           P(A ∩ B )
P(A|B) =  -----------------
              P(B)

P(A|B) * P(B) = P(A ∩ B )


              P(A ∩ B )
P(B|A) =  -----------------
                 P(A)

P(B|A) * P(A) = P(A ∩ B )

P(A|B) * P(B) = P(B|A) * P(A)



             P(A ∩ B )          P(B|A) * P(A)
P(A|B) =  -----------------  = ------------------
                P(B)              P(B)



            우도 * 사전확률
사후확률 = ------------
            주변우도

P(스팸|복권) : 사후확률, 이벤트가 발생 후 확률

P(복권|스팸) : 우도(likelihood), 가능성(어떤 일이 있을 공간)

P(스팸) : 사전확률, 이벤트 발생 전 확률

P(복권) : 주변우도(marginal likelihood), 확률변수가 아닌 상수로 고려


<<교차표>>

복권
       yes      no       합
--------------------
스팸   3        19      22
햄     2        76      78
합                      100

복권이라는 단어가 들어왔을 경우, 스팸일 확률


                P(복권|스팸) * P(스팸)        3/22 * 22*100
P(스팸|복권) = ---------------             = -------------  = 0.6
                 P(복권)                      5/100

((3/22) * (22/100)) / (5/100)


         복권       백만    수신취소
       yes  no     yes  no   yes no             합
----------------------------------------------
스팸   3    19     11   11   13  9
햄     2    76     15   63   21  57
합     5    95     26   74   34  66 

복권=yes, 백만 =no, 수신취소 = yes
                  
                                 P(복권∩ㄱ백만∩수신취소|스팸) *P(스팸)      
P(스팸|복권∩ㄱ백만∩수신취소) = ----------------------------------------
                                 P(복권∩ㄱ백만∩수신취소)


P(복권∩ㄱ백만∩수신취소) = P(복권∩ㄱ백만∩수신취소|스팸) *P(스팸) + 
                            P(복권∩ㄱ백만∩수신취소|햄) *P(햄) 


P(복권|스팸) * P(ㄱ백만|스팸) * P(수신취소|스팸) * P(스팸) +
P(복권|햄) * P(ㄱ백만|햄) * P(수신취소|햄)  * P(햄)



P(스팸|복권∩ㄱ백만∩수신취소) =  P(복권∩ㄱ백만∩수신취소|스팸)*P(스팸)
= P(복권|스팸) * P(ㄱ백만|스팸) * P(수신취소|스팸) * P(스팸)
= (1)



  P(햄|복권∩ㄱ백만∩수신취소) =  P(복권∩ㄱ백만∩수신취소|햄)
= P(복권|햄) * P(ㄱ백만|햄) * P(수신취소|햄) * P(햄)
= (2)
  
                                        (1)
  P(스팸|복권∩ㄱ백만∩수신취소) = ------------------------------
                                    (1) + (2)



  [문제217]비아그라=YES,돈=NO,식료품=NO,주소삭제=YES일때 스팸일 확률을 구하세요.
  
  비아그라		돈		식료품	 	주소삭제	합
  YES	NO	YES	NO	YES	NO	  YES	NO
  스팸	     4	16	10	10	0	20	    12	8	     20
  햄	       1	79	14	66	8	72	    23	57	   80
  합	       5	95	24	76	8	92	    35	65	  100
  

  [문제218] 비아그라=YES, 돈=NO, 식료품=YES, 주소삭제=YES 일때 스팸일 확률을 구하세요.
  
  
  
■ 라플라스 추정치 (Laplace estimator)
확률값이 0이 나오지 않도록 작은값으로 보정한다. 1로 보정한다.
  
  P(스팸|비아그라∩ㄱ돈∩식료품∩주소삭제)
  = 5/24 * 11/24 * 1/24 * 13/24 * 20/100
  
  P(햄|비아그라∩ㄱ돈∩식료품∩주소삭제)
  =2/84 * 67/84 * 9/84 * 24/84 * 80/100


[문제219] 메일안에 복권이라는 단어가 있을 경우에 스팸일 확률?
    
P(스팸|복권)= ?
    
P(스팸)=0.22
P(복권|스팸) = 0.136
P(복권|햄) = 0.025
    

              P(스팸∩복권)        P(복권|스팸)*P(스팸)
P(스팸|복권)= ---------      =   ------------
               P(복권)            P(복권)
  
P(스팸|복권) = P(복권|스팸)*P(스팸)

P(복권) = P(복권|스팸)*P(스팸) + P(복권|햄)*P(햄)


(0.136 * 0.22) / ((0.136 * 0.22) + (0.025*0.78)) = 

install.packages('e1071')
library(e1071)

mail <- read.csv('C:/Users/USER/Downloads/dataJMC/mail.csv',header=T)

# naiveBayes

nb <- naiveBayes(mail[1:4],mail$분류)
nb

test <- data.frame('YES','NO','NO','YES')
test
names(test) <- names(mail[,1:4])
test

predict(nb,test)  



movie <- read.csv('C:/Users/USER/Downloads/dataJMC/movie.csv',header=T)

idx <- sample(2,nrow(movie),replace=T,prob=c(0.8,0.2))
1:39

idx
table(idx)


# 학습데이터
movie_train <- movie[idx==1,1:5]
nrow(movie_train)

# 테스트 데이터
movie_test <- movie[idx==2,1:5]
nrow(movie_test)


# 학습데이터 정답
movie_train_labels <- movie[idx==1,6]
length(movie_train_labels)

# 테스트 데이터
movie_test_labels <- movie[idx==2,6]
length(movie_test_labels)

nb<-naiveBayes(movie_train,movie_train_labels)

test_predict <- predict(nb,movie_test)

sum(test_predict == movie_test_labels)/length(movie_test_labels)


nb<-naiveBayes(movie_train,movie_train_labels,laplace=1)

test_predict <- predict(nb,movie_test)

sum(test_predict == movie_test_labels)/length(movie_test_labels)

install.packages('gmodels')
library(gmodels)
gmodels::CrossTable(x=movie_test_labels,y=test_predict,prop.chisq=F,
                    dnn=c('실제','예측'))




[문제221] spam,ham 분류를 해주세요.

sms <- read.csv('C:/Users/USER/Downloads/dataJMC/sms_spam.csv',header=T)

library(stringr)
library(tm)

str_detect(sms$text,'www')

sms[str_detect(sms$text,'www'),]
sms[grep('www',sms$text),]


sum(str_detect(sms$text,'www'))
length(grep('www',sms$text))

as.vector(na.omit(str_extract(sms$text,'www\\S+')))
as.vector(na.omit(str_extract(sms$text,'(http|https)\\S+')))

sms_corpus <- VCorpus(VectorSource(sms$text))
inspect(sms_corpus)
lapply(sms_corpus[1:2],content)

sms_corpus_clean <- tm_map(sms_corpus,content_transformer(tolower))
lapply(sms_corpus_clean[1:2],content)

convert <- content_transformer(function(x,pattern){
  return(gsub(pattern,' ',x))
})

sms_corpus_clean <- tm_map(sms_corpus_clean,convert,'(http|https)\\S+')
sms_corpus_clean <- tm_map(sms_corpus_clean,convert,'www\\S+')
sms_corpus_clean <- tm_map(sms_corpus_clean,convert,'/|:|;|\\.|"|<|>|\\?|!')
sms_corpus_clean <- tm_map(sms_corpus_clean,convert, "'|%|&|\\^|\\$")
sms_corpus_clean <- tm_map(sms_corpus_clean,convert,'\\(|\\)')
sms_corpus_clean <- tm_map(sms_corpus_clean,removeWords,tm::stopwords())
sms_corpus_clean <- tm_map(sms_corpus_clean,convert,'(http|https)\\S+')
sms_corpus_clean <- tm_map(sms_corpus_clean,removeNumbers)
lapply(sms_corpus_clean[1:10],content)

sms_dtm <- DocumentTermMatrix(sms_corpus_clean,control = list(wordLengths=c(2,Inf)))
inspect(sms_dtm)

as.matrix(sms_dtm)
nrow(sms_dtm)

idx <- sample(2,nrow(sms_dtm),replace=T,prob=c(0.8,0.2))
idx
sms_dtm[c(1,2),]

#학습데이터
sms_dtm_train <- sms_dtm[idx==1,]

#테스트데이터
sms_dtm_test <- sms_dtm[idx==2,]

#학습데이터 정답
sms_dtm_train_labels <- sms[idx==1,1]

#테스트데이터 정답
sms_dtm_test_labels <- sms[idx==2,1]

#빈도수를 범주형 자료로 수정 0 : NO, 1이상의 값: YES
convert_count <- function(x){
  x <- ifelse(x>0,'YES','NO')
}

sms_train <- apply(sms_dtm_train,MARGIN=2,convert_count)
sms_train[1,]

sms_test <- apply(sms_dtm_test,MARGIN=2,convert_count)
sms_test[1,]

sms_nb <- naiveBayes(sms_train,sms_dtm_train_labels)
test_predict <- predict(sms_nb,sms_test)

CrossTable(x=sms_dtm_test_labels,y=test_predict)

(959 + 150)/1134


텍스트 나이브베이즈 프로젝트
1.기획, 목표
2. 텍스트 수집
      -공공데이터 다운
      -크롤링
3. 텍스트 전처리
      -토큰화
      -불용어
      -대소문자 통일
      -필요없는 숫자, 특수문자 제거
      -어근추출(의미있는 단어 통일)
      -텍스트 인코딩(말뭉치,DTM)
4. 텍스트 분석
      -감성분석
      -분류분석
5. 시각화
6. 결론

pdf로 제출. 발표(2월28일)(10분~15분)