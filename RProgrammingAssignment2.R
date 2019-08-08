makeCacheMatrix <- function(arg2 = matrix()) {
in <- NULL 
setting <- function(arg1) {
arg2 <<- arg1
in <<- NULL
}
getting <- function() arg2
setinv <- function(inverse) in <<- inverse
#in order to be able to access variables by using dollar sign.
getinv <- function() in
list(setting = setting, setinv = setinv, getinv = getinv)
}

cacheSolve <- function(arg2, ...){
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