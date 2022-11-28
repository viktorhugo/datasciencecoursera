## operador de asignacion ( <- )
x <- 1 ## expression
print(x)
x
msg <- 'hello'
print(msg)

y <- 1:20
y

## VECTOR can only contain objects of the same class
  # vector( name, lenght),  c(0.5, 0.6) sirve para concatenar
## LIST contain any class type

## NUMBERS
  # L, inf

## ATRIBUTES
  # names, dimensiones, class, length, function atributes

p <- c(0.5, 0.6)
x <- c(TRUE, FALSE)
r <- vector('numeric', length = 100)
t <- c(1.4, 'a') ## character
a <- c(TRUE, 2) ## numeric [1] 1 2
s <- c('a', TRUE) ## character


## explicir cohercion

v <- 0:6
class(v)
as.logical(v) ## [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
as.character(v) ## [1] "0" "1" "2" "3" "4" "5" "6"

k <- c("a", "b", "c")
as.numeric(k) ## [1] NA NA NA

## List
n <- list(1, "A", TRUE, 1+4i, v)
n


## Matri
n <- matrix(nrow = 2, ncol = 3)
dim(n) ## dimensions matrix
xe <- matrix(1:6, nrow = 2, ncol = 3)
xq <- 1:10
dim(xq) <- c(2, 5)

## cbind-ing and rbind-ing
xt <- 1:3
xy <- 10:12
cbind(xt,xy)
rbind(xt,xy)

## Factors
xc <- factor(c('yes', 'yes', "no", 'yes', "no"), levels = c( "yes", "no"))
xc
table(xc)
## [1] yes yes no  yes no 
## Levels: no yes
## table(xc)
## no yes 
## 2   3 
unclass(xc) ## elimina la clase de un vector
## [1] 2 2 1 2 1
## attr(,"levels")
## [1] "no"  "yes"
## levels = c( "yes", "no") adding this



## DATA FRAMES
xg <- data.frame(foo= 1:4, bar = c(T,T,F,F))



## NAMES
names(xt)
names(xt) <- c("foo", "bar", "norf")
xw <- list(a=1, b=2, c=3)
names(xw)
wx <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(wx) <- list(c("a", "b"), c("c", "d")) ## pass list with 1 arg. row names,2 arg. col names 
wx


## READING DATA
 ## read.table() read.csv()
 ## readLines()
## source()




## dput-ting R Objects
bv <- data.frame(a=1, b="a")
dput(bv, file = "y.R") ## escribir codigo en R que despues puede ser utlizado para reconstruir un objeto en R
new.bv <- dget("y.R")
new.bv


## dumping R Objects
bx <- 'foo'
by <- data.frame(a=1, b="a")
dump(c('bx', 'by'), file = "data.R") ## 
rm(bx,by)
source("data.R")
bx
by




## INTERFACES to the outside world
# file() open file
# gzfile() open file compressed gzip
# bzfile() open file compressed bzip2
# url() open webpage
con <- file("foo.txt", "r")










































