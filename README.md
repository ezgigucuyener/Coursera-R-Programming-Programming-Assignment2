# Coursera-R-Programming-Programming-Assignment2
makeCacheMatrix <- function(arg2 = matrix()) {
#initialize in as NULL, so that it will hold the value of matrix inverse
in <- NULL 
setting <- function(arg1) {
  #define setting fuction to assign new
arg2 <<- arg1
in <<- NULL
}
getting <- function() arg2
setinv <- function(inverse) in <<- inverse
# assigns value of inv in parent environment

getinv <- function() in
#in order to be able to access variables by using dollar sign.
list(setting = setting, setinv = setinv, getinv = getinv)
}

cacheSolve <- function(arg2, ...){
#return a matrix that's inverse 
in <- arg2$getinv()
if(!is.null(in)){
message("getting the cached data...")
return(in)

}
var <- arg2$getinv()
in <- solve(data, ...)
x$setinv(in)
in
}
