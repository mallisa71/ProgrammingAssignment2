## The makeCacheMatrix is a function that creates the matrix object 
## Caching the inverse of a Matrix elminates the need to repeatdly compute it

## This is the Caching of the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setslove <- function(solve) s <<- solve
  getmean <- function() s
  list(set = set, get = get,
       setslove = setslove,
       getsolve = getsolve)

}


## The cacheSolve function computes the inverse for the special matrix that will be returned by the makeCacheMatrix function

cacheSolve <- function(x, ...) {
s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- mean(data, ...)
  x$setmean(m)
  s
        ## Return a matrix that is the inverse of 's'
}
