library(tidyverse)
install.packages(c("nycflights13","Laham","gapminder"))
library(dplyr)
data(mpg)
mpg

ggplot(mpg,aes(displ,hwy))+geom_point()

ggplot(mpg)+
  geom_point(aes(x = displ,
                 y = hwy,
                 color = class, #색
                 size = 0.8, #크기
                 alpha = 0.5)) #명암, shape = 모양

ggplot(mpg)+
  geom_point(aes(x=displ,
                 y = hwy,
                 color = class))+
  facet_wrap(~class) #화면분할

ggplot(mpg)+
  geom_point(aes(x=displ,
                 y = hwy,
                 color = class))+
  facet_wrap(~class,
             ncol = 2) # 가로로 2개씩 보기

ggplot(mpg) +
  geom_point(aes(x = displ,
                 y = hwy,
                 color = class))+
  facet_grid(drv ~ cyl)

ggplot(mpg, aes(x = displ,
                y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm") #method = "lm" 선형회귀선 추가

ggplot(mpg, aes(x = displ,
                y = hwy)) +
  geom_point(aes(color = class))+ #변수마다 색 추가 
  geom_smooth(method = "lm")


# diamonds

data(diamonds)
diamonds

ggplot(diamonds,aes(x=cut))+
  geom_bar()

ggplot(diamonds)+
  geom_bar(aes(x=cut, y=stat(prop),
               group = 1))

ggplot(diamonds)+
  geom_bar(aes(x=cut, fill = cut))

#가로 분할 색칠
ggplot(diamonds) +
  geom_bar(aes(x = cut,
               fill = clarity))

#세로로 색별로 분할
ggplot(diamonds)+
  geom_bar(aes(x=cut, fill=clarity),
           position = "dodge")

ggplot(diamonds) +
  geom_bar(aes(x= cut,
               fill = clarity),
           position = "fill")

install.packages("maps")
nz <- map_data("nz")

# geom_polygon 지도 그리는 함수
ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

# geom_polygon 지도라는 함수
ggplot(nz, aes(long, lat, group = group))+
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()



######2021.1월19일 화요일######

#1.2.4 연습문제

#1번
ggplot(data = mpg) 

#2번 #dim행과열 
dim(mpg) 

# 3번
?mpg
the type of drive train, where f = front-wheel drive,
r = rear wheel drive, 4 = 4wd 

# 4번
ggplot(mpg, aes(x = hwy,
                y = cyl)) +
  geom_point() 

# 5번 < 분포를 볼수없다. 둘다 범주형이기 때문인다. >
ggplot(mpg, aes(x = class,
                y = drv)) +
  geom_point() 

###################################

# 1.3.1 연습문제

# 1번 ( 괄호 한개가 부족하기 때문이다. )
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# 2번
# 범주형 : "바보"
# 연속형 : 1234
?mpg
str(mpg)
#int = 소수점이 안들어가 있는 숫자. chr = 범주(문자형) num= 소수점도 있는 숫자 

# 범주형 : manufacturer , model , trans, drv, fl, class

# 3번
# 점그래프

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),color = 'blue',size = 3,shape = 2)
             

# 4번 ( 가능하다. )

# 5번 (테두리, 모양 전부다 된다.)
?geom_point

# 6번 ( 된다. "x축이 연속형이여만 한다.")

aes(color = displ < 5)
ggplot(mpg,aes(x = displ<5,
               y = hwy))+
  geom_point()


###############################################3

# 1.5.1 연습문제 

# 1번 < 그래프를 보고 의미를 도출할 수 없다. >

ggplot2::mpg

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ,y=hwy))+
  facet_wrap(~displ, nrow=2)

# 2번 < 빈셀은 그변수에 해당하는 숫자가 없는것이다. >
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(drv~cyl)

# 3번 <가로 세로 차이이다. >
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(. ~ cyl)

# 4번
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# 5번
# nrow : 행의 개수 지정 , ncol : 열의 개수 지정 
# 

# 6번

#####################################

#1.6.1

#1번
















