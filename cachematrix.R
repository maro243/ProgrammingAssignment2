## Coursera R programming assignment 2
## Some functions to cache the inverse of a matrix s.t. any calls after the first are handed the cached inverse
## please see usage_cachematrix.R (in same repo) for example usage
## (side note - is this as really as close as you can get to class behaviour in R? )

## Tahes an existing matrix x and defines some getter and setter methods for storing and retrieveing x and its inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solv) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## this function when called on the resulting wrapper object from makeCacheMatrix, will determine the contained matrix's inverse
## when called for the first time, it will calculate the inverse, thereafter it will return the cached value stored in the wrapper

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
