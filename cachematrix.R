## Put comments here that give an overall description of what your
## functions do

## to create the matrix to be inversed 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y)
  {
    x<<- y
    m<<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix <- function () m 
  matrix(set=set,get=get,setmatrix,getmatrix=getmatrix)
}


## returns the inverse matrix

cacheSolve <- function(x, ...) 
{
## Return a matrix that is the inverse of 'x
        m <- x$getmatrix()
        if(!is.null(m)) {
        message("getting cached data")
        return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}
