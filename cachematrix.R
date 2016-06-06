## Put comments here that give an overall description of what your
## functions do

## This functions takes a matrix and exposes four operations
## setting the value of the function, getting the value of the 
## function and getting the inverse of a function. These operations
## are exposed as a list
makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 ##setter
 set <- function(y){
   x <<- y
   m <<- NULL
 }
 ##getter
 get <- function(){x}
 ##setInverse
 setInverse <- function(matrixInverse){
   m <<- matrixInverse
 }
 ##getInverse
 getInverse <- function(){m}
 
 list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

## This function returns the inverse of a matrix.  If this inverse
## has already been calculated, it is simply retrieved fro the cache
## Otherwise, the inverse is calculated and placed in the cache before
## It is returned.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
