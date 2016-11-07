## Put comments here that give an overall description of what your
pair of functions which coache the invese of matrix
## functions do
to creates a special matrix object to cache its inverse
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
  x <<- y
inv <<-Null
}
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
     
## Write a short comment describing this function
to cumputes the inverse of special matrix result from makeCacheMatrix
        
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
 message("getting cached data")
 return(inv)
 }
data<- x$get()
inv <- solve(data)
x$setInverse(inv)
inv
}
