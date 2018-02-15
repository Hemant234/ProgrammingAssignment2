## Put comments here that give an overall description of what your
## functions do

## caching the calculated inverse 

makeCacheMatrix <- function(x = matrix()) {
  l <- NULL
  set <- function(y) 
  {
    x <<- y
    l <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) l <<- inverse
  getinverse <- function() l
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}



## This function checks the cache for the output if the output is already calculated 
## it reads it from the cache or if its not it calculates the output 

cacheSolve <- function(x, ...)
{
m <- x$getinverse()
if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
data <- x$get()
m <- solve(data)
x$setinverse(m)
  m
}
